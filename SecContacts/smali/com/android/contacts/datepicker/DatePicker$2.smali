.class Lcom/android/contacts/datepicker/DatePicker$2;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/datepicker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/datepicker/DatePicker;


# direct methods
.method constructor <init>(Lcom/android/contacts/datepicker/DatePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/contacts/datepicker/DatePicker$2;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 1
    .parameter "picker"
    .parameter "oldVal"
    .parameter "newVal"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$2;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    #getter for: Lcom/android/contacts/datepicker/DatePicker;->isNumMonth:Z
    invoke-static {v0}, Lcom/android/contacts/datepicker/DatePicker;->access$100(Lcom/android/contacts/datepicker/DatePicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    add-int/lit8 p2, p2, -0x1

    .line 186
    add-int/lit8 p3, p3, -0x1

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$2;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    iput p3, v0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    .line 193
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$2;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    #calls: Lcom/android/contacts/datepicker/DatePicker;->adjustMaxDay()V
    invoke-static {v0}, Lcom/android/contacts/datepicker/DatePicker;->access$200(Lcom/android/contacts/datepicker/DatePicker;)V

    .line 194
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$2;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    #calls: Lcom/android/contacts/datepicker/DatePicker;->notifyDateChanged()V
    invoke-static {v0}, Lcom/android/contacts/datepicker/DatePicker;->access$000(Lcom/android/contacts/datepicker/DatePicker;)V

    .line 195
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$2;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker;->updateDaySpinner()V

    .line 196
    return-void
.end method
