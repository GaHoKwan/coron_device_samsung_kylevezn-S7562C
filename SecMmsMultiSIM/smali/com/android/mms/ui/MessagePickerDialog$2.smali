.class Lcom/android/mms/ui/MessagePickerDialog$2;
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
    .line 189
    iput-object p1, p0, Lcom/android/mms/ui/MessagePickerDialog$2;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 191
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2

    .line 192
    iget-object v4, p0, Lcom/android/mms/ui/MessagePickerDialog$2;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    #getter for: Lcom/android/mms/ui/MessagePickerDialog;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/ui/MessagePickerDialog;->access$000(Lcom/android/mms/ui/MessagePickerDialog;)Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/MessagePickerDialog$2;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    #getter for: Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;
    invoke-static {v4}, Lcom/android/mms/ui/MessagePickerDialog;->access$100(Lcom/android/mms/ui/MessagePickerDialog;)Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-nez v4, :cond_0

    .line 193
    iget-object v4, p0, Lcom/android/mms/ui/MessagePickerDialog$2;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    #getter for: Lcom/android/mms/ui/MessagePickerDialog;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/ui/MessagePickerDialog;->access$000(Lcom/android/mms/ui/MessagePickerDialog;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MessagePickerDialog$2;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 195
    iget-object v4, p0, Lcom/android/mms/ui/MessagePickerDialog$2;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    #getter for: Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;
    invoke-static {v4}, Lcom/android/mms/ui/MessagePickerDialog;->access$100(Lcom/android/mms/ui/MessagePickerDialog;)Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->clearFocus()V

    .line 197
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/MessagePickerDialog$2;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    #getter for: Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;
    invoke-static {v4}, Lcom/android/mms/ui/MessagePickerDialog;->access$100(Lcom/android/mms/ui/MessagePickerDialog;)Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 199
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 201
    .local v1, value:I
    invoke-static {}, Lcom/android/mms/ui/MessagePickerDialog;->access$200()I

    move-result v4

    if-ne v1, v4, :cond_1

    .line 202
    iget-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog$2;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    #calls: Lcom/android/mms/ui/MessagePickerDialog;->showMinLimitWarning()V
    invoke-static {v3}, Lcom/android/mms/ui/MessagePickerDialog;->access$300(Lcom/android/mms/ui/MessagePickerDialog;)V

    .line 218
    .end local v0           #str:Ljava/lang/String;
    .end local v1           #value:I
    :goto_0
    return v2

    .line 206
    .restart local v0       #str:Ljava/lang/String;
    .restart local v1       #value:I
    :cond_1
    invoke-static {}, Lcom/android/mms/ui/MessagePickerDialog;->access$200()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 207
    iget-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog$2;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    #getter for: Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;
    invoke-static {v3}, Lcom/android/mms/ui/MessagePickerDialog;->access$100(Lcom/android/mms/ui/MessagePickerDialog;)Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    move-result-object v3

    invoke-static {}, Lcom/android/mms/ui/MessagePickerDialog;->access$400()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker;->setValue(I)V

    goto :goto_0

    .line 213
    .end local v0           #str:Ljava/lang/String;
    .end local v1           #value:I
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v2, :cond_3

    .line 214
    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog$2;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    #getter for: Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;
    invoke-static {v2}, Lcom/android/mms/ui/MessagePickerDialog;->access$100(Lcom/android/mms/ui/MessagePickerDialog;)Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    :cond_3
    move v2, v3

    .line 218
    goto :goto_0
.end method
