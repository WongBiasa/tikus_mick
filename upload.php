<? php
print_r ( $ _FILES ); // ini akan mencetak nama yang diterima, nama sementara, jenis, ukuran, dll.

if (! empty ( $ _FILES )) {
error_log ( "Diterima" . "\ r \ n" , 3 , "Log.log" );

}

$ size = $ _FILES [ 'audio_data' ] [ 'size' ]; // ukuran dalam byte
$ input = $ _FILES [ 'audio_data' ] [ 'tmp_name' ]; // nama sementara yang diberikan PHP ke file yang diunggah
$ output = $ _FILES [ 'audio_data' ] [ 'nama' ]. ".wav" ; // membiarkan klien mengontrol nama file adalah ide yang agak buruk

// pindahkan file dari nama temp ke folder lokal menggunakan $ output name
move_uploaded_file ( $ input , $ output )
?>
