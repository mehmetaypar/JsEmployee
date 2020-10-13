function blockopener( itr){

    for (var x=1;x<=9;x++){
        if (x!=itr)
        document.getElementById('Blok'+x.toString()).style.display='none';
        }    
    if(document.getElementById('S'+itr.toString()).checked  ){
    
        document.getElementById('Blok'+itr.toString()).style.display='block';
    }  
    
    else{}
}


//bar aç her birine
function YeniCalisan(){
    blockopener(1);
}
function YeniCalisanYükle(){
    var x, Ad, Soyad,Eposta, Telefon,İşeGirişTarihi,Maaş,Departman,Unvan,Yöneticisi;
  
    
    Ad= document.getElementById("B1_ListAd").value;
    Soyad= document.getElementById("B1_ListSoyad").value;
    Eposta= document.getElementById("B1_ListE-posta").value; 
    Telefon= document.getElementById("B1_ListTelefon").value;
    İşeGirişTarihi= document.getElementById("B1_ListGiris").value;
    Maaş= document.getElementById("B1_ListMaas").value;
    Departman= document.getElementById("B1_ListDepartman").value;
    Unvan= document.getElementById("B1_ListUnvan").value;
    Yöneticisi= document.getElementById("B1_ListYonetici").value;
    //(Ad, Soyad,Eposta, Telefon,İşeGirişTarihi,Maaş,Departman,Unvan,Yöneticisi);
}//////////////////bunları api a gönder

function CalisaniGuncelle(){
    blockopener(3);
}
function CalisaniGuncellemeYap()
{    var x, Ad, Soyad,Eposta, Telefon,İşeGirişTarihi,Maaş,Departman,Unvan,Yöneticisi;
  
    
    Ad= document.getElementById("B3_ListAd").value;
    Soyad= document.getElementById("B3_ListSoyad").value;
    Eposta= document.getElementById("B3_ListE-posta").value; 
    Telefon= document.getElementById("B3_ListTelefon").value;
    İşeGirişTarihi= document.getElementById("B3_ListGiris").value;
    Maaş= document.getElementById("B3_ListMaas").value;
    Departman= document.getElementById("B3_ListDepartman").value;
    Unvan= document.getElementById("B3_ListUnvan").value;
    Yöneticisi= document.getElementById("B3_ListYonetici").value;


    text = Ad;
    console.log(Ad);
    document.getElementById("demo").innerHTML = text;
    
    //(Ad, Soyad,Eposta, Telefon,İşeGirişTarihi,Maaş,Departman,Unvan,Yöneticisi);
}/////////////////////////////////////////////////////////////////////////////////API a gönder
/*
1. Ad
2. Soyad
3. E-posta
4. Telefon
5. İşe Giriş Tarihi
6. Maaş
7. Departman
8. Unvan
9. Yöneticisi
}
*/

function CalisanListe(){
    blockopener(2);


/*var text;   
 var liste=[].sort;

for (eleman in liste)
{
    text+=eleman+'\n'
}
document.getElementById("B3_ListAd").innerHTML = text;
document.getElementById("B3_ListAd").value
*/
}

function YönetimHiyerarsikListe(){
    
    blockopener(4);
}

function CalisanUnvanTarihcesiGetter(){
    blockopener(7);

}

function MaasOrtalaması(){
    blockopener(5);

    
}////API üstünden hesaplanıp gelecek maaşlara sızılmasın diye, 

function UnvanSetter(){
    blockopener(6);

}

function DepartmanYönetimi(){
    blockopener(8);
    


}//?????????? getter, setter or both?

function OfisYönetimi(){
    blockopener(9);

}//?????????? getter, setter or both?



function myFunction() {
    var x, text;
  
    // Get the value of the input field with id="numb"
    x = document.getElementById("numb").value;
  
    // If x is Not a Number or less than one or greater than 10
    if (isNaN(x) || x < 1 || x > 10) {
      
    } 

for (var itr=1;itr<=9;itr++)
if(document.getElementById('S'+itr.toString()).checked  ){

    document.getElementById('Blok'+itr.toString()).style.display='block';
}
else{
document.getElementById('Blok'+itr.toString()).style.display='none';
}

if(1){}
    else {
        
        switch(x) {
            case 1:
                {

              text = "Yeni bir çalışan bilgisi kaydediliyor";}
              //YeniCalisan();
              //break;}
            case 2:
              {text = "Çalışanların listesi:";
              
              CalisanListe();
              break;
}
            case 3:
                {text = " Bir çalışana ait bilgileri güncellemek";
                CalisaniGuncelle();
                break;}

            case 4:
           { text = "Yöneticilerin çalışanlarını hiyerarşik şekilde listelemek";
            YönetimHiyerarsikListe();
                break;
}
            case 5:
                {text = " Departmanların maaş ortalamaları";//API üstünden hesaplanıp gelecek maaşlara sızılmasın diye, 
                MaasOrtalaması();
                break;
}
            case 6:
                {text = "Çalışanın unvan bilgilerini değiştirme";
                UnvanSetter();
                break;}

            case 7:
               { text = "Çalışan bilgilerini unvan tarihçesiyle göstermek";
                CalisanUnvanTarihcesiGetter();}
            break;

            case 8:
                {text = "Departman yönetimi ";//?????????? getter, setter or both?
                DepartmanYönetimi();}
                break;

            case 9:
               { text = "Ofis yönetimi ";//?????????? getter, setter or both?
                OfisYönetimi();
}
                break;


                            }
                           
                            var x = document.createElement("INPUT");
                            x.setAttribute("type", "hidden");
                            document.body.appendChild(x);
                          
                            document.getElementById("demo").innerHTML = text;
                                         
                            

    }
   //document.getElementById("demo").innerHTML = text;
  }

  myFunction();