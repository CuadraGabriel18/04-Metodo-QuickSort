function quicksort(arr) {
  // Esta es la función principal que realiza el ordenamiento Quick Sort.
 
    if (arr.length <= 1) {
      // Empieza con la verificación para asegurarse de que el arreglo tenga una longitud menor o igual a 1.
      return arr;
    }
  // Luego, se selecciona un elemento como pivote
    const pivote = arr[Math.floor(arr.length / 2)];
    const menores = [];
    const mayores = [];
  // Se crean dos arreglos, menores y mayores,
  // para almacenar los elementos menores y mayores que el pivote.
    for (let i = 0; i < arr.length; i++) {
      if (arr[i] < pivote) {
        menores.push(arr[i]);
      } else if (arr[i] > pivote) {
        mayores.push(arr[i]);
      }
    }
  
    return [...quicksort(menores), pivote, ...quicksort(mayores)];
  }
  // Esta función se encarga de mostrar los arreglos original y ordenado en elementos
  function mostrarArreglos(arrOriginal, arrOrdenado) {
    const elementoArrOriginal = document.getElementById('originalArray');
    const elementoArrAscendente = document.getElementById('sortedArrayAscendente');
    const elementoArrDescendente = document.getElementById('sortedArrayDescendente');
  
    elementoArrOriginal.textContent = arrOriginal.join(', ');
    elementoArrAscendente.textContent = arrOrdenado.join(', ');
    elementoArrDescendente.textContent = arrOrdenado.slice().reverse().join(', ');
  }
  
  // Esta función ejecuta cuando se hace clic en un botón para ordenar los números ingresados.
  function ordenarNumeros() {
    const numInput = document.getElementById('numInput').value;
    const numeros = numInput.split(',').map(numero => parseInt(numero.trim(), 10));
  
    if (numeros.some(isNaN)) {
      alert("Ingrese números válidos separados por coma.");
      return;
    }
  
    const numerosOrdenados = quicksort(numeros.slice());
    mostrarArreglos(numeros, numerosOrdenados);
  
    document.getElementById('numInput').value = '';
  }
  