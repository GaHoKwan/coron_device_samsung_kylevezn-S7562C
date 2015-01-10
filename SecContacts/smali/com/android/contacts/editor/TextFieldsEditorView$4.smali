.class Lcom/android/contacts/editor/TextFieldsEditorView$4;
.super Ljava/lang/Object;
.source "TextFieldsEditorView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/TextFieldsEditorView;->setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field byteName:[B

.field final synthetic this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

.field final synthetic val$column:Ljava/lang/String;

.field final synthetic val$nameMaxLength:I

.field final synthetic val$nameView:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/TextFieldsEditorView;ILandroid/widget/EditText;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 708
    iput-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    iput p2, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->val$nameMaxLength:I

    iput-object p3, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->val$nameView:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->val$column:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 709
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->byteName:[B

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 728
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$1600(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->byteName:[B

    .line 729
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->byteName:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->val$nameMaxLength:I

    if-le v0, v1, :cond_0

    .line 730
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 731
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->val$column:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/editor/LabeledEditorView;->onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 736
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 712
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    #getter for: Lcom/android/contacts/editor/TextFieldsEditorView;->mCurStr:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$1200(Lcom/android/contacts/editor/TextFieldsEditorView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 723
    :cond_0
    :goto_0
    return-void

    .line 715
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/contacts/editor/TextFieldsEditorView;->mCurStr:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$1202(Lcom/android/contacts/editor/TextFieldsEditorView;Ljava/lang/String;)Ljava/lang/String;

    .line 716
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$1300(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    #getter for: Lcom/android/contacts/editor/TextFieldsEditorView;->mCurStr:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$1200(Lcom/android/contacts/editor/TextFieldsEditorView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->byteName:[B

    .line 717
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->byteName:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->val$nameMaxLength:I

    if-le v0, v1, :cond_2

    .line 718
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$1400(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    #getter for: Lcom/android/contacts/editor/TextFieldsEditorView;->mCurStr:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$1200(Lcom/android/contacts/editor/TextFieldsEditorView;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->val$nameMaxLength:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->trimNonAsciiTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/contacts/editor/TextFieldsEditorView;->mCurStr:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$1202(Lcom/android/contacts/editor/TextFieldsEditorView;Ljava/lang/String;)Ljava/lang/String;

    .line 720
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->val$nameView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    #getter for: Lcom/android/contacts/editor/TextFieldsEditorView;->mCurStr:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$1200(Lcom/android/contacts/editor/TextFieldsEditorView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 722
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    #getter for: Lcom/android/contacts/editor/TextFieldsEditorView;->mCurStr:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$1200(Lcom/android/contacts/editor/TextFieldsEditorView;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/contacts/editor/TextFieldsEditorView;->mBeforeStr:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$1502(Lcom/android/contacts/editor/TextFieldsEditorView;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
