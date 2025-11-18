
//menu retrátil

let navbar = document.querySelector('.navbar');

document.querySelector('#menu-btn').onclick = () =>{
    navbar.classList.toggle('active');
}

//fim menu retrátil

//header transparente

window.addEventListener("scroll", function(){
    let header = document.querySelector('.header');
    header.classList.toggle('rolagem', window.scrollY > 0)
})
window.addEventListener("scroll", function(){
    let header = document.querySelector('.header1');
    header.classList.toggle('rolagem', window.scrollY > 0)
})

//fim header transparente