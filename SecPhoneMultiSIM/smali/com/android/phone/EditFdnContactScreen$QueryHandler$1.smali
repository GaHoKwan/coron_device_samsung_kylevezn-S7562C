.class Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;
.super Ljava/lang/Object;
.source "EditFdnContactScreen.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EditFdnContactScreen$QueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field beforeString:Ljava/lang/String;

.field byteArrayName:[B

.field mCurrentString:Ljava/lang/String;

.field needResetMaxLength:Z

.field final synthetic this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;


# direct methods
.method constructor <init>(Lcom/android/phone/EditFdnContactScreen$QueryHandler;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 856
    iput-object p1, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 857
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->byteArrayName:[B

    .line 858
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    .line 859
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->beforeString:Ljava/lang/String;

    .line 860
    iput-boolean v1, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->needResetMaxLength:Z

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 911
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 914
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->beforeString:Ljava/lang/String;

    .line 915
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 8
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 862
    if-nez p1, :cond_1

    .line 907
    :cond_0
    :goto_0
    return-void

    .line 864
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 868
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    .line 869
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v3, v3, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/phone/EditFdnContactScreen;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->byteArrayName:[B

    .line 871
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->byteArrayName:[B

    array-length v3, v3

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v4, v4, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I
    invoke-static {v4}, Lcom/android/phone/EditFdnContactScreen;->access$2300(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v4

    if-le v3, v4, :cond_4

    .line 877
    const/4 v2, 0x1

    .line 878
    .local v2, isFirst:Z
    :goto_1
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->byteArrayName:[B

    array-length v3, v3

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v4, v4, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I
    invoke-static {v4}, Lcom/android/phone/EditFdnContactScreen;->access$2300(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v4

    if-le v3, v4, :cond_3

    .line 879
    if-eqz v2, :cond_2

    .line 880
    const/4 v2, 0x0

    .line 881
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v5, v5, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I
    invoke-static {v5}, Lcom/android/phone/EditFdnContactScreen;->access$2300(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    .line 882
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v3, v3, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/phone/EditFdnContactScreen;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->byteArrayName:[B

    goto :goto_1

    .line 884
    :cond_2
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v5, v5, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I
    invoke-static {v5}, Lcom/android/phone/EditFdnContactScreen;->access$2300(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    .line 885
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v3, v3, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/phone/EditFdnContactScreen;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->byteArrayName:[B

    goto :goto_1

    .line 888
    :cond_3
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v3, v3, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$300(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 891
    .end local v2           #isFirst:Z
    :cond_4
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v3, v3, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/phone/EditFdnContactScreen;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->byteArrayName:[B

    .line 892
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v3, v3, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "byteArrayName Length is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->byteArrayName:[B

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/EditFdnContactScreen;->access$2000(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;)V

    .line 893
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->byteArrayName:[B

    array-length v3, v3

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->mCurrentString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v1, v3, v4

    .line 894
    .local v1, diff:I
    if-lez v1, :cond_5

    .line 895
    new-array v0, v7, [Landroid/text/InputFilter;

    .line 896
    .local v0, NameFilterArray:[Landroid/text/InputFilter;
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v4, v4, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I
    invoke-static {v4}, Lcom/android/phone/EditFdnContactScreen;->access$2300(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v4

    sub-int/2addr v4, v1

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v6

    .line 897
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v3, v3, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$300(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 898
    iput-boolean v7, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->needResetMaxLength:Z

    goto/16 :goto_0

    .line 900
    .end local v0           #NameFilterArray:[Landroid/text/InputFilter;
    :cond_5
    iget-boolean v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->needResetMaxLength:Z

    if-eqz v3, :cond_0

    .line 901
    new-array v0, v7, [Landroid/text/InputFilter;

    .line 902
    .restart local v0       #NameFilterArray:[Landroid/text/InputFilter;
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v4, v4, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mName_MaxLength:I
    invoke-static {v4}, Lcom/android/phone/EditFdnContactScreen;->access$2300(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v6

    .line 903
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v3, v3, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$300(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 904
    iput-boolean v6, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->needResetMaxLength:Z

    goto/16 :goto_0
.end method
