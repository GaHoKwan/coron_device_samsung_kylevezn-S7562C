.class Lcom/android/mms/ui/MessagePickerDialog$3;
.super Ljava/lang/Object;
.source "MessagePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessagePickerDialog;-><init>(Landroid/content/Context;ILcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;IIIILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessagePickerDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagePickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/mms/ui/MessagePickerDialog$3;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 224
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    .line 225
    iget-object v4, p0, Lcom/android/mms/ui/MessagePickerDialog$3;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    #getter for: Lcom/android/mms/ui/MessagePickerDialog;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/ui/MessagePickerDialog;->access$000(Lcom/android/mms/ui/MessagePickerDialog;)Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/MessagePickerDialog$3;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    #getter for: Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;
    invoke-static {v4}, Lcom/android/mms/ui/MessagePickerDialog;->access$100(Lcom/android/mms/ui/MessagePickerDialog;)Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-nez v4, :cond_0

    .line 226
    iget-object v4, p0, Lcom/android/mms/ui/MessagePickerDialog$3;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    #getter for: Lcom/android/mms/ui/MessagePickerDialog;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/ui/MessagePickerDialog;->access$000(Lcom/android/mms/ui/MessagePickerDialog;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MessagePickerDialog$3;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 228
    iget-object v4, p0, Lcom/android/mms/ui/MessagePickerDialog$3;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    #getter for: Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;
    invoke-static {v4}, Lcom/android/mms/ui/MessagePickerDialog;->access$100(Lcom/android/mms/ui/MessagePickerDialog;)Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->clearFocus()V

    .line 231
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/MessagePickerDialog$3;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    #getter for: Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;
    invoke-static {v4}, Lcom/android/mms/ui/MessagePickerDialog;->access$100(Lcom/android/mms/ui/MessagePickerDialog;)Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 233
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 234
    .local v1, value:I
    invoke-static {}, Lcom/android/mms/ui/MessagePickerDialog;->access$400()I

    move-result v4

    if-ne v1, v4, :cond_2

    .line 235
    iget-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog$3;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    #calls: Lcom/android/mms/ui/MessagePickerDialog;->showMaxLimitWarning()V
    invoke-static {v3}, Lcom/android/mms/ui/MessagePickerDialog;->access$500(Lcom/android/mms/ui/MessagePickerDialog;)V

    .line 248
    .end local v0           #str:Ljava/lang/String;
    .end local v1           #value:I
    :goto_0
    return v2

    .line 244
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v2, :cond_2

    .line 245
    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog$3;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    #getter for: Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;
    invoke-static {v2}, Lcom/android/mms/ui/MessagePickerDialog;->access$100(Lcom/android/mms/ui/MessagePickerDialog;)Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    :cond_2
    move v2, v3

    .line 248
    goto :goto_0
.end method
