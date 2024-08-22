document.addEventListener('DOMContentLoaded', function() {
    const cartItems = document.querySelectorAll('.cart-item');
    let totalPriceSum = 0;

    function updateTotalCartPrice() {
        let sum = 0;
        cartItems.forEach(item => {
            const unitPrice = parseInt(item.querySelector('.price').textContent.replace('値段:', '').replace('円', '').trim());
            const quantity = parseInt(item.querySelector('.quantity-input').value);
            const itemTotalPrice = unitPrice * quantity;
            sum += itemTotalPrice;
        });
        document.querySelector('.sum_price').textContent = sum.toLocaleString();
    }

    cartItems.forEach(item => {
        const minusButton = item.querySelector('.quantity-minus');
        const plusButton = item.querySelector('.quantity-plus');
        const quantityInput = item.querySelector('.quantity-input');
        const priceElement = item.querySelector('.product-price');
        
        // 商品の単価を取得 (円を削除して整数に変換)
        const unitPrice = parseInt(item.querySelector(".price").textContent.replace("値段:", "").replace("円", "").trim());

        // 合計金額を更新する関数
        function updateTotalPrice() {
            const currentValue = parseInt(quantityInput.value);
            const totalPrice = unitPrice * currentValue;
            priceElement.textContent = `${totalPrice.toLocaleString()}円`;
            updateTotalCartPrice();
        }

        // マイナスボタンをクリックしたとき
        minusButton.addEventListener('click', function() {
            let currentValue = parseInt(quantityInput.value);
            if (currentValue > 1) {
                quantityInput.value = currentValue - 1;
                updateTotalPrice();
            }
        });

        // プラスボタンをクリックしたとき
        plusButton.addEventListener('click', function() {
            let currentValue = parseInt(quantityInput.value);
            quantityInput.value = currentValue + 1;
            updateTotalPrice();
        });

        // ページ読み込み時に初期合計金額を計算
        updateTotalPrice();
    });

    // 初期のカート合計金額を計算して表示
    updateTotalCartPrice();
});