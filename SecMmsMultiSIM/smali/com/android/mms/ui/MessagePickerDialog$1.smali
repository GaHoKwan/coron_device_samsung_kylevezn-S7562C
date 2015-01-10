.class Lcom/android/mms/ui/MessagePickerDialog$1;
.super Ljava/lang/Object;
.source "MessagePickerDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 163
    iput-object p1, p0, Lcom/android/mms/ui/MessagePickerDialog$1;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 165
    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog$1;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MessagePickerDialog;->setLimitaion(Z)V

    .line 167
    const/4 v0, 0x1

    .line 169
    :cond_0
    return v0
.end method
