.class Lcom/samsung/mms/util/SaveRestoreOperation$11;
.super Ljava/lang/Object;
.source "SaveRestoreOperation.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/util/SaveRestoreOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/util/SaveRestoreOperation;


# direct methods
.method constructor <init>(Lcom/samsung/mms/util/SaveRestoreOperation;)V
    .locals 0
    .parameter

    .prologue
    .line 489
    iput-object p1, p0, Lcom/samsung/mms/util/SaveRestoreOperation$11;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 491
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 494
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v1, -0x1

    .line 497
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation$11;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    iget-object v0, v0, Lcom/samsung/mms/util/SaveRestoreOperation;->mAltDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 498
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation$11;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    iget-boolean v0, v0, Lcom/samsung/mms/util/SaveRestoreOperation;->mNoSdCard:Z

    if-nez v0, :cond_1

    .line 499
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation$11;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    iget-object v0, v0, Lcom/samsung/mms/util/SaveRestoreOperation;->mAltDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation$11;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    iget-object v0, v0, Lcom/samsung/mms/util/SaveRestoreOperation;->mAltDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method
