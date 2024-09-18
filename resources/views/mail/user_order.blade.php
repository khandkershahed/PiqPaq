{{-- resources/views/mail/user_order.blade.php --}}
<!DOCTYPE html>
<html>

<head>
    <title>Order Confirmation</title>
</head>

<body>
    <h1>Hello, {{ $data['user']->name }}</h1>
    <p>Thank you for your order!</p>
    <p>Your order number is: <strong>{{ $data['order']->order_number }}</strong></p>
    <h2>Order Details:</h2>
    <ul>
        @foreach ($data['order_items'] as $item)
            <li>{{ $item->product_name }} - {{ $item->quantity }} x {{ $item->price }}</li>
        @endforeach
    </ul>
    <p>Total: {{ $data['order']->total }}</p>
    <p>We will notify you when your order is shipped.</p>
    <p>Thank you for shopping with us!</p>
</body>

</html>
