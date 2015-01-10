.class Lcom/android/mms/ui/MessagePickerDialog$5;
.super Ljava/lang/Object;
.source "MessagePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 269
    iput-object p1, p0, Lcom/android/mms/ui/MessagePickerDialog$5;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 271
    iget-object v0, p0, Lcom/android/mms/ui/MessagePickerDialog$5;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    #getter for: Lcom/android/mms/ui/MessagePickerDialog;->mPickerType:I
    invoke-static {v0}, Lcom/android/mms/ui/MessagePickerDialog;->access$600(Lcom/android/mms/ui/MessagePickerDialog;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/mms/ui/MessagePickerDialog$5;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagePickerDialog;->setLimitaion(Z)V

    .line 275
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessagePickerDialog$5;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    #calls: Lcom/android/mms/ui/MessagePickerDialog;->setDuration()V
    invoke-static {v0}, Lcom/android/mms/ui/MessagePickerDialog;->access$700(Lcom/android/mms/ui/MessagePickerDialog;)V

    goto :goto_0
.end method
