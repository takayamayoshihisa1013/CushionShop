document.querySelector('.minus').addEventListener('click', function() {
    const input = document.getElementById('quantity');
    let value = parseInt(input.value);
    if (value > 1) {
        value--;
        input.value = value;
    }
    console.log("minus");
});

document.querySelector('.plus').addEventListener('click', function() {
    const input = document.getElementById('quantity');
    let value = parseInt(input.value);
    value++;
    input.value = value;
});

const size_button = document.querySelectorAll(".size_label");

size_button.forEach(size => {
    size.addEventListener("click", function() {
        console.log(this);
        
        size_button.forEach(btn => {
            btn.style.backgroundColor = "";
            btn.style.color = "#000"
        })
        this.style.backgroundColor = "#000";
        this.style.color = "#FFFF"
    })
    
});

const color_button = document.querySelectorAll(".color_label");

color_button.forEach(color => {
    color.addEventListener("click", function() {
        console.log(this);
        
        color_button.forEach(btn => {
            btn.style.border = "1px solid ";
        })
        this.style.border = "1px solid #ff4500";
        console.log(this);
    })
    
});

const sub_imgs = document.querySelectorAll(".sub_img img");

sub_imgs.forEach(img => {
    img.addEventListener("click", function() {
        document.querySelector(".top_img img").src = this.src
    })
})


document.querySelector('.buy_kart_form').addEventListener('submit', function(event) {
    const colorChecked = document.querySelector('input[name="color"]:checked');
    const sizeChecked = document.querySelector('input[name="size"]:checked');
    let valid = true;

    if (!colorChecked) {
        alert('色を選択してください。');
        valid = false;
    }

    if (!sizeChecked) {
        alert('サイズを選択してください。');
        valid = false;
    }

    if (!valid) {
        event.preventDefault();  // フォーム送信をキャンセル
    }
});

