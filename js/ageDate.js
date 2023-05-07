const dateOfBirth = document.getElementById("dateOfBirth");
const age = document.getElementById("age");

const calculateAge = (dateOfBirth) =>
{
    const currentDate   = new Date();
    const currentYear   = parseInt(currentDate.getFullYear());
    const currentMonth  = parseInt(currentMonth.getMonth()) + 1;
    const currentDay    = parseInt(currentDay.getDate());

// año-mes-dia (2000-10-01)
    const yearBirth     = parseInt(String(dateOfBirth).substring(0,4));
    const monthBirth    = parseInt(String(dateOfBirth).substring(5,7));
    const dayBirth      = parseInt(String(dateOfBirth).substring(8,10));

    let age = currentYear - yearBirth;
    if( currentMonth < monthBirth)
    {
        age--;
    }
        else if (currentMonth === monthBirth)
        {
            if (currentDay < dayBirth)
            {
                age--;
            }
        }
    return age;
};

// año-mes-dia (2000-10-01)
window.addEventListener('load', function() 
{

    dateOfBirth.addEventListener('change', function() 
    {
        if(this.value) 
        {
            age.innerText = `la edad es: ${calculateAge(this.value)} Años`;
            
        }
    });
});