.class Lcom/android/mms/ui/SelectMapActivity$4;
.super Ljava/lang/Object;
.source "SelectMapActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SelectMapActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SelectMapActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SelectMapActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/mms/ui/SelectMapActivity$4;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 216
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "str"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 212
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "str"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity$4;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    #calls: Lcom/android/mms/ui/SelectMapActivity;->setSearchButtonState(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/SelectMapActivity;->access$200(Lcom/android/mms/ui/SelectMapActivity;I)V

    .line 208
    return-void
.end method
