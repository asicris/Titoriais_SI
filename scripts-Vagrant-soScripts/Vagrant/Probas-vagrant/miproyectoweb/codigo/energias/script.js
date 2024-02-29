

const hidraulica= {
      "2011": 257.0,
      "2012": 297.0,
      "2013": 343.0,
      "2014": 258.0,
      "2015": 285.0,
      "2016": 255.0,
      "2017": 175.0,
      "2018": 319.0,
      "2019": 230.0,
      "2020": 191.0
    }

const eolica= {
    "2011": 65.0,
    "2012": 62.0,
    "2013": 75.0,
    "2014": 76.0,
    "2015": 71.0,
    "2016": 71.0,
    "2017": 66.0,
    "2018": 67.0,
    "2019": 73.0,
    "2020": 74.0
  }

const fotovoltaica =  {
    "2011": 2.0,
    "2012": 2.0,
    "2013": 2.0,
    "2014": 2.0,
    "2015": 2.0,
    "2016": 2.0,
    "2017": 2.0,
    "2018": 2.0,
    "2019": 2.0,
    "2020": 2.0
  }

  const otrasrenovables = {
    "2011": 14.0,
    "2012": 17.0,
    "2013": 82.0,
    "2014": 86.0,
    "2015": 85.0,
    "2016": 77.0,
    "2017": 83.0,
    "2018": 82.0,
    "2019": 73.0,
    "2020": 79.0
  }

  
  const residuosrenovables = {
    "2011": null,
    "2012": null,
    "2013": null,
    "2014": null,
    "2015": 33.0,
    "2016": 39.0,
    "2017": 37.0,
    "2018": 36.0,
    "2019": 38.0,
    "2020": 41.0
  }



    let anos = Object.keys(hidraulica); //Crea un array cos anos que se mostran
    let tiposenerxias = ['hidraulica','eolica','fotovoltaica','otrasrenovables','residuosrenovables'];
        
  

//FUNCÓNS DE CÁLCULO

    const media = (taboaenerxia) =>{
        
        let enerxia = Object.values(taboaenerxia); //megawatios 
        //Reduce calculamos o total de megawatios e dividimos entre a lonxitude do array.
        return enerxia.reduce((total,b)=>total+b)/enerxia.length;
    }

    const total = (taboaenerxia) => {
        let enerxia = Object.values(taboaenerxia); //megawatios 
        return enerxia.reduce((total,b)=> total+b);
    }
 

    const anomaiorenerxia = (taboaenerxia) =>{
        //Ordeno o array de valores, e doulle a volta, de maior a menor ordeado, por iso emprego reverse()
        let ordenada= Object.values(taboaenerxia).sort().reverse();
        //Recollo o índice do ano que máis enerxía se xerou, empregando indexOf sobre os valores da taboaenerxia
        let indice = Object.values(taboaenerxia).indexOf(ordenada[0]);
        //Para recuperar o ano emprego o arraya keys, e recupero o índice do ano que máis se xerou enerxía.
        return Object.keys(taboaenerxia)[indice];
        
    }


    const anopeorenerxia = (taboaenerxia) =>{
        //Ordeno o array de valores, de menor a maior e collo logo o menor posición 0
        let ordenada= Object.values(taboaenerxia).sort();
        //Recollo o índice do ano que menos enerxía se xerou, empregando indexOf sobre os valores da taboaenerxia
        let indice = Object.values(taboaenerxia).indexOf(ordenada[0]);
        //Para recuperar o ano emprego o arraya keys, e recupero o índice do ano que máis se xerou enerxía.
        return Object.keys(taboaenerxia)[indice];
}


    const maisde70 = (taboaenerxia) =>{

        let anosmais = [];
        let valoresmais = Object.values(taboaenerxia).filter((valor,index)=>{
            if (valor>70){
                anosmais.push(Object.keys(taboaenerxia)[index]);
                return valor;
            }

        });

        return anosmais.toString();

    }





    //Imprimr a media de enerxía Hidraúlica
    console.log('ENERXÍA HIDRÁULICA ENTRE ',anos[0], ' e ', anos[anos.length-1]);
    console.log('MEDIA: ',media(hidraulica));
    console.log('TOTAL: ', total(hidraulica));
    console.log('MELLOR ANO:',  anomaiorenerxia(hidraulica));
    console.log('PEOR ANO:',  anopeorenerxia(hidraulica));
    console.log('ANOS CON MÁIS DE 70 MEGAWATIOS XERADOS',  maisde70(hidraulica));

    //Imprimr a media de enerxía EÓLICA
    console.log('ENERXÍA EÓLICA ENTRE ',anos[0], ' e ', anos[anos.length-1]);
    console.log('MEDIA: ',media(eolica));
    console.log('TOTAL: ', total(eolica));
    console.log('MELLOR ANO:',  anomaiorenerxia(eolica));
    console.log('PEOR ANO:',  anopeorenerxia(eolica));
    console.log('ANOS CON MÁIS DE 70 MEGAWATIOS XERADOS',  maisde70(eolica));

    //Imprimr a media de enerxía FOTOVOLTAICA
    console.log('ENERXÍA FOTOVOLTAICA ENTRE ',anos[0], ' e ', anos[anos.length-1]);
    console.log('MEDIA: ',media(fotovoltaica));
    console.log('TOTAL: ', total(fotovoltaica));
    console.log('MELLOR ANO:',  anomaiorenerxia(fotovoltaica));
    console.log('PEOR ANO:',  anopeorenerxia(fotovoltaica));
    console.log('ANOS CON MÁIS DE 70 MEGAWATIOS XERADOS',  maisde70(fotovoltaica));

    //Imprimr a media de enerxía OTRAS RENOVABLES
    console.log('ENERXÍA OTRAS RENOVABLES ENTRE ',anos[0], ' e ', anos[anos.length-1]);
    console.log('MEDIA: ',media(otrasrenovables));
    console.log('TOTAL: ', total(otrasrenovables));
    console.log('MELLOR ANO:',  anomaiorenerxia(otrasrenovables));
    console.log('PEOR ANO:',  anopeorenerxia(otrasrenovables));
    console.log('ANOS CON MÁIS DE 70 MEGAWATIOS XERADOS',  maisde70(otrasrenovables));

    //Imprimr a media de enerxía Residuos Renovables
    console.log('ENERXÍA RESIDUOS RENOVABLES ENTRE ',anos[0], ' e ', anos[anos.length-1]);
    console.log('MEDIA: ',media(residuosrenovables));
    console.log('TOTAL: ', total(residuosrenovables));
    console.log('MELLOR ANO:',  anomaiorenerxia(residuosrenovables));
    console.log('PEOR ANO:',  anopeorenerxia(residuosrenovables));
    console.log('ANOS CON MÁIS DE 70 MEGAWATIOS XERADOS',  maisde70(residuosrenovables));
    


    //MEDIAS POR ANO
    
    
    for (i in hidraulica){
        
        let mediaenerxias = (hidraulica[i]+eolica[i]+fotovoltaica[i]+otrasrenovables[i]+residuosrenovables[i])/5;
        let totalenerxias = (hidraulica[i]+eolica[i]+fotovoltaica[i]+otrasrenovables[i]+residuosrenovables[i]);
               
        console.log('MEDIA ano', i,' : ',mediaenerxias);
        console.log('TOTAL ano', i,' : ',totalenerxias);
        console.log('------------------------');
        
    }
    
    