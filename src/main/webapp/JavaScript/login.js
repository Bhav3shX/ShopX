const login = document.getElementById('signin'); 
const button=document.getElementById('btn')
btn.addEventListener('click', () => {
    const loginValue = login.value; 
    const emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/; 
    const phonePattern = /^\d{10}$/; 
    const parent=document.querySelector('.co1');
    if (emailPattern.test(loginValue) || phonePattern.test(loginValue)) {
        console.log("Valid input");
    } else {
        const created =document.createElement('div');
        created.innerText='enter valid email or phone';
        created.style.color='red';
        parent.appendChild(created);
    }
});
