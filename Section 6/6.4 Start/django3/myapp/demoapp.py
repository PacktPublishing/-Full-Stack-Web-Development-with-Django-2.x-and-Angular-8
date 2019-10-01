
import asyncio

async def app(scope, receive, send):
    assert scope['type'] == 'http'
    data = [b'Welcome to Django',b'3.0']

    await send({
        'type':'http.response.start',
        'status':200,
        'headers':[ [b'content-type',b'text/html'] ],
    })

    for chunk in data:
        await send({
            'type':'http.response.body',
            'body':chunk,
            'more_body': True
        })
        await asyncio.sleep(1)
    
    await send({
        'type':'http.response.body',
        'body':b'<h1>Django ASGI APp is finally here!!</h1>',
        'more_body':True
    })
    await asyncio.sleep(1)

    await send({
        'type':'http.response.body',
        'body':b"Let's get busy!!",
        'more_body':False 
    })