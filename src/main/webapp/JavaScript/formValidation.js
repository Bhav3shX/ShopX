
// name check
const uname=document.getElementById('name');
uname.addEventListener('input',function () {
    const nameValue=uname.value.trim();
    const nameError=document.querySelector('.short');

    if(nameValue.length < 3){
        if(!nameError){
            const error=document.createElement('div');
            error.className='short';
            error.textContent="Name should be greater than or equal to 3";
            uname.parentElement.appendChild(error);
        }
    }
    else{
        if(nameError){
            nameError.remove();
        }
    }

})


// phone check

const phoneInput = document.getElementById('phone');
const form = document.querySelector('form');

form.addEventListener('submit', function (event) {
    event.preventDefault();

    const phoneValue = phoneInput.value.replace(/\s/g, ''); // Remove spaces
    const errorContainer = form.querySelector('.short');

    if (phoneValue.length > 10 || !/^\d+$/.test(phoneValue) || phoneValue.length < 10) {
        if (!errorContainer) {
           
            const errorDiv = document.createElement('div');
            errorDiv.className = 'short';
            errorDiv.textContent = 'Phone number is invalid. It should be numeric and have a maximum length of 10 characters.';
            form.appendChild(errorDiv);
           
            
        }
    } else {
        if (errorContainer) {
            errorContainer.remove();
            
        }
        form.submit();
        
    }
});




    //pass check
    const firstPass = document.getElementById('password');
    const secondPass = document.getElementById('confirm-password');
    
    firstPass.addEventListener('input', function () {
        const firstPassValue = firstPass.value.trim();
        const passError = document.querySelector('.short');
    
        // Regular expression for at least 8 characters with at least one special character
        const passwordPattern = /^(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{8,}$/;
    
        if (!passwordPattern.test(firstPassValue)) {
            if (!passError) {
                const getEye = document.getElementById('see-pass');
                getEye.style.position = 'absolute';
                getEye.style.right = '5px';
                getEye.style.top = '10%';
                
                const passError = document.createElement('div');
                passError.className = 'short';
                passError.textContent = 'Password must be more than 8 characters and contain at least one special character (!@#$%^&*)';
                firstPass.parentElement.appendChild(passError);
            }
        } else {
            if (passError) {
                passError.remove();
            }
        }
    });
    
    // confirm password
    const password = document.getElementById('password');
    const confirmPassword = document.getElementById('confirm-password');
    let mismatch;
    confirmPassword.addEventListener('input', function () {
        
    
        if (password.value !== confirmPassword.value) {
            if (!mismatch) {
                mismatch = document.createElement('div');
                mismatch.className = 'short';
                mismatch.textContent = 'Passwords do not match';
                confirmPassword.parentElement.appendChild(mismatch);
            }
        } else {
            if (mismatch) {
                mismatch.remove();
                mismatch = null;
            }
        }
    });


    // see passsword on click (eye icon)
        const icon = document.getElementById('see-pass');
    const passSee = document.getElementById('password');
    
    icon.addEventListener('click', function () {
        if (passSee.type === 'password') {
            passSee.type = 'text'; 
        } else {
            passSee.type = 'password'; 
        }
    });


    //account created

function showMsg(){

        alert("Account created succesfully");
  }
    
    