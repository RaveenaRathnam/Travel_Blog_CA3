<?php

namespace App\Http\Controllers;

use App\Mail\ContactMail;
use Illuminate\Http\Request;
use Mail;

class ContactController extends Controller
{
    //
    public function contact(){
        return view('contact_us');
    }
    public function sendEmail(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required|string|max:255|regex:/^[a-zA-Z\s]+$/u',
            'email' => 'required|email',
            'phone' => 'required|regex:/^[0-9]{10,20}$/',
            'msg' => 'required|string|max:1000',
        ]);

        $details =[
            'name' => $request->name,
            'email' => $request->email,
            'phone' => $request->phone,
            'msg' => $request->msg

        ];

        Mail::to('D00251856@student.dkit.ie')->send(new ContactMail($details));
        return back()->with('message_sent','Your message has been sent successfully!');
    }
}
