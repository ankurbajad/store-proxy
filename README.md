# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby Version
  * 2.5.0

* Rails Version
  * 5.2.3

* Postgres Version
  * 10.6


* For Create Store by Postman check below URL:
  * Here app_id we have generate Randomly on store creation time.
  * And Also I have added getting response URL in store create response just copy and paste that URL in browser.

  URL: http://localhost:3000/api/v1/stores
  Method: Post:
  Body: {
    "store": {
      "store_type": "lite",
      "proxy": true,
      "body": "test message"
    }
  }

  Response:
   {
    "status": 200,
    "message": "Store created successfully",
    "store": {
        "id": 27,
        "store_type": "lite",
        "app_id": "a94c9a779b",
        "proxy": true,
        "body": "test messagefgfgffgfgfg",
        "created_at": "2019-05-16T12:36:54.378Z",
        "updated_at": "2019-05-16T12:36:54.378Z"
    },
    "url": "http://localhost:3000/api/v1/stores/a94c9a779b"
}

* I have Made show Method Also here.
 URL: http://localhost:3000/api/v1/stores/a94c9a779b
 Method: Get
 Response: {
    "status": 200,
    "message": "Store Display.",
    "body": "test messagefgfgffgfgfg"
  }




* For Check Rspec go to Project folder and run rspec.
