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
        })
        this.style.backgroundColor = "red";
    })
    
});