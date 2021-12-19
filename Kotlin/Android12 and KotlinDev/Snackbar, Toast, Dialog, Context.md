# Snackbar, Toast, Dialog, Context

> ## Toast
> 
> - 안드로이드에서 가장 일반적인 방법으로 팝업 메세지를 전달하는 용법
> 
> - 용법은 [아래](https://developer.android.com/guide/topics/ui/notifiers/toasts?hl=ko)와 같음:
>   
>   ```kotlin
>   Toast.maekText(this, "Hey, this is Toast", Toast.LENGTH_LONG).show()
>   ```

> ## Snackbar
> 
> - 팝업 메세지 외에 사용자에게 확인 받거나 선택이 필요할 때 Dialog를 사용
>
> - [Snackbar 클래스는 Toast를 대체합니다.](https://developer.android.com/training/snackbar?hl=ko) 현재 Toast도 여전히 지원되지만 이제 간략한 임시 메시지를 표시하는 데 Snackbar가 더 많이 사용됩니다.
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
