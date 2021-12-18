# Snackbar, Toast, Dialog, Context

> ## Toast
> 
> - 안드로이드에서 가장 일반적인 방법으로 팝업 메세지를 전달하는 용법
> 
> - 용법은 아래와 같음:
>   
>   ```kotlin
>   Toast.maekText(this, "Hey, this is Toast", Toast.LENGTH_LONG).show()
>   ```

> ## Snackbar
> 
> - 팝업 메세지 외에 사용자에게 확인 받거나 선택이 필요할 때 Dialog를 사용
> 
> - 용법은 아래와 같음:
>   
>   ```kotlin
>   Snackbar.make(findViewById(R.id.lr), "스낵바", Snackbar.LENGTH_LONG).show();
>   ```

> ## Dialog
> 
> - 팝업 메세지 외에 사용자에게 확인 받거나 선택이 필요할 때 Dialog를 사용
> 
> - 용법은 아래와 같음:
>   
>   ```kotlin
>    btnAlert.setOnClickListener(v -> {
>           showNoticeDialog();
>       });
>       }
>           public void showNoticeDialog() {
>               // Create an instance of the dialog fragment and show it
>               DialogFragment dialog = new FireMissilesDialogFragment();
>               dialog.show(getSupportFragmentManager(), "NoticeDialogFragment");
>           }
>   [출처] 안드로이드 Snackbar, Toast, Dialog, Context|작성자 윌렴
>   ```
