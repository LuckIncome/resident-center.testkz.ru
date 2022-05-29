<?php

namespace App\Http\Controllers;

use App\Models\Review;
use App\Models\Order;

use App\Models\User;
use Illuminate\Http\Client\Response;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class FeedbackController extends Controller
{
    public $gmail = "rimmc@inbox.ru";

    public function review(Request $request) 
    {
        	
		$validator = Validator::make($request->all(), [
            'name' => ['required'],
            'text' => ['required'],
        ]);

        if ($validator->fails()) {
            return response()->json(['success' => false], 400);
        }
		
		$review = new Review();
        $review->name = $request->name;
        $review->email = $request->email;
        $review->content = $request->text;
        $review->status = false;
        $review->save();
		
        return response()->json(['success' => true], 200);
    }

    public function order(Request $request) 
    {
        $name = $request->get('name');
        $phone = $request->get('phone');
        $url = $request->get('url');
        $title = $request->get('title');
		
		//$url_ip = "https://api.db-ip.com/v2/free/".$_SERVER["REMOTE_ADDR"];
        //$parse = json_decode(file_get_contents($url_ip),true);
        //$browser = $request->get('browser');
		
		
        $token = "5193675238:AAH77dT_0WtH9a5t9JXiW1ky1Rbdw1W4Kgk";
        $chat_id = "-793149101";
        $txt = [];

        $to = $this->gmail;
        $subject = "Заявка с сайта https://resident-center.kz";
        $sendfrom   = "user@resident-center.kz";
        $headers  = "From: " . strip_tags($sendfrom) . "\r\n";
        $headers .= "Reply-To: ". strip_tags($sendfrom) . "\r\n";
        $headers .= "MIME-Version: 1.0\r\n";
        $headers .= "Content-Type: text/html;charset=utf-8 \r\n";

        $message = "
        $subject<br>
        <b>Имя:</b> $name <br>
        <b>Телефон:</b> $phone <br>
        <b>Заголовок:</b> $title <br>
        <b>URL:</b> $url";
        
        $arr = array(
        	'Имя' => $name,
        	'Телефон' => $phone,
        	'Заголовок' => $title,
        	'URL' => $url,
        );
        
        //$txt = "<b>Имя:</b>".$name."%0A<b>Телефон:</b>".$phone."%0A<b>Заголовок:</b>".$title."%0A<b>URL:</b>".$url."%0A<b>Браузер клиента:</b>".$browser."%0A<b>IP клиента:</b>".$parse['ipAddress']."%0A<b>Страна клиента:</b>".$parse['countryName']."%0A<b>Город клиента:</b>".$parse['city'];
		$txt = "<b>Имя:</b>".$name."%0A<b>Телефон:</b>".$phone."%0A<b>Заголовок:</b>".$title."%0A<b>URL:</b>".$url;
        
        $send = mail($to, $subject, $message, $headers);
        
        $url = "https://api.telegram.org/bot".$token."/sendMessage?chat_id=".$chat_id."&parse_mode=html&text=".$txt;
        
        
        
        $validator = Validator::make($request->all(), [
            'name' => ['required', 'min:2', 'max:15', 'regex:/[А-Яа-яЁё]/u'],
            'phone' => ['required', 'min:18'],
        ]);

        if ($validator->fails()) {
            return response()->json(['success' => false], 400);
        }
        
        if ($send)
        { 
			$sendToTelegram = fopen($url,"r");
            $feedback = new Order();
            $feedback->name = $request->name;
            $feedback->phone = $request->phone;
            $feedback->url = $request->url;
            $feedback->title = $request->title;
            $feedback->save();
        }

        return response()->json(['success' => true], 200);
    }
}
