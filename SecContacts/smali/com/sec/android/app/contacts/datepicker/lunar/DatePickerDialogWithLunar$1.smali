.class Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$1;
.super Ljava/lang/Object;
.source "DatePickerDialogWithLunar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;-><init>(Landroid/content/Context;ILcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$OnDateSetListener;IIIZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$1;->this$0:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/16 v1, 0x76c

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$1;->this$0:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    #getter for: Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->access$000(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$1;->this$0:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    #getter for: Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->access$000(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$1;->this$0:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    #getter for: Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->access$000(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$1;->this$0:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    #getter for: Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;
    invoke-static {v4}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->access$100(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$1;->this$0:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    #getter for: Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;
    invoke-static {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->access$100(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearFocus()V

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$1;->this$0:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    #getter for: Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mButtonState:I
    invoke-static {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->access$200(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 232
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error ButtonState value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$1;->this$0:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    #getter for: Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSetLunarView:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->access$300(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)Landroid/widget/Button;

    move-result-object v0

    const v4, 0x7f0d0368

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$1;->this$0:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    #getter for: Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;
    invoke-static {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->access$400(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$1;->this$0:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    #getter for: Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;
    invoke-static {v4}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->access$100(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/datepicker/DatePicker;->getYear()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$1;->this$0:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    #getter for: Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;
    invoke-static {v5}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->access$100(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/datepicker/DatePicker;->getMonth()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$1;->this$0:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    #getter for: Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;
    invoke-static {v6}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->access$100(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/contacts/datepicker/DatePicker;->getDayOfMonth()I

    move-result v6

    invoke-virtual {v0, v4, v5, v6}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->convertSolarToLunar(III)V

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$1;->this$0:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    #getter for: Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;
    invoke-static {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->access$400(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getYear()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$1;->this$0:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    move v4, v3

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->updateDate(IIIZZ)V

    .line 235
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$1;->this$0:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    iget-object v1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$1;->this$0:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    #getter for: Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;
    invoke-static {v1}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->access$100(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/datepicker/DatePicker;->getYear()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$1;->this$0:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    #getter for: Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;
    invoke-static {v2}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->access$100(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/datepicker/DatePicker;->getMonth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$1;->this$0:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    #getter for: Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;
    invoke-static {v3}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->access$100(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/datepicker/DatePicker;->getDayOfMonth()I

    move-result v3

    #calls: Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->updateTitle(III)V
    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->access$600(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;III)V

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$1;->this$0:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    #getter for: Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;
    invoke-static {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->access$100(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 237
    return-void

    .line 208
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$1;->this$0:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$1;->this$0:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    #getter for: Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;
    invoke-static {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->access$400(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getYear()I

    move-result v5

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$1;->this$0:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    #getter for: Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;
    invoke-static {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->access$400(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getMonth()I

    move-result v6

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$1;->this$0:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    #getter for: Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;
    invoke-static {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->access$400(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getDay()I

    move-result v7

    move v8, v3

    move v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->updateDate(IIIZZ)V

    goto :goto_0

    .line 217
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$1;->this$0:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    #getter for: Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;
    invoke-static {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->access$100(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker;->getYear()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$1;->this$0:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    #getter for: Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;
    invoke-static {v1}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->access$100(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/datepicker/DatePicker;->getMonth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->isLeapMonth(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$1;->this$0:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    #getter for: Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSetLunarView:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->access$300(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0d0367

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 219
    iget-object v4, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$1;->this$0:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$1;->this$0:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    #getter for: Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;
    invoke-static {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->access$400(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getYear()I

    move-result v5

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$1;->this$0:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    #getter for: Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;
    invoke-static {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->access$400(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getMonth()I

    move-result v6

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$1;->this$0:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    #getter for: Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;
    invoke-static {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->access$400(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getDay()I

    move-result v7

    move v8, v2

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->updateDate(IIIZZ)V

    goto/16 :goto_0

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$1;->this$0:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    #calls: Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->toSolarDate(Z)V
    invoke-static {v0, v2}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->access$500(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;Z)V

    goto/16 :goto_0

    .line 228
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$1;->this$0:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;

    #calls: Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->toSolarDate(Z)V
    invoke-static {v0, v3}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->access$500(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;Z)V

    goto/16 :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
