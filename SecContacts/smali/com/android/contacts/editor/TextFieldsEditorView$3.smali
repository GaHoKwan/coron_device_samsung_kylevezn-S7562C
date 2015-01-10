.class Lcom/android/contacts/editor/TextFieldsEditorView$3;
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
.field isEncodable:Z

.field isIncludeKor:Z

.field final synthetic this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

.field totalTextByte:I

.field final synthetic val$column:Ljava/lang/String;

.field final synthetic val$fieldView:Landroid/widget/EditText;

.field final synthetic val$kind:Lcom/android/contacts/model/DataKind;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/TextFieldsEditorView;Landroid/widget/EditText;Lcom/android/contacts/model/DataKind;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 542
    iput-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    iput-object p2, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->val$fieldView:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->val$kind:Lcom/android/contacts/model/DataKind;

    iput-object p4, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->val$column:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->val$fieldView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/contacts/editor/TextFieldsEditorView;->chkKorean(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$100(Lcom/android/contacts/editor/TextFieldsEditorView;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->isIncludeKor:Z

    .line 544
    iput v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->totalTextByte:I

    .line 545
    iput-boolean v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->isEncodable:Z

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 10
    .parameter "s"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 549
    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->val$fieldView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/view/View;->isShown()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 550
    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->val$fieldView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/TextView;->getInputType()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_d

    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    #getter for: Lcom/android/contacts/editor/TextFieldsEditorView;->isSIMAccount:Z
    invoke-static {v6}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$200(Lcom/android/contacts/editor/TextFieldsEditorView;)Z

    move-result v6

    if-eq v6, v8, :cond_0

    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    #getter for: Lcom/android/contacts/editor/TextFieldsEditorView;->isSIM2Account:Z
    invoke-static {v6}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$300(Lcom/android/contacts/editor/TextFieldsEditorView;)Z

    move-result v6

    if-ne v6, v8, :cond_d

    .line 552
    :cond_0
    const/4 v4, 0x0

    .line 553
    .local v4, length:I
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-ne v6, v8, :cond_8

    .line 554
    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$400(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNumberLength()I

    move-result v6

    add-int/lit8 v4, v6, 0x1

    .line 555
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v6

    if-nez v6, :cond_1

    .line 556
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    #getter for: Lcom/android/contacts/editor/TextFieldsEditorView;->isSIM2Account:Z
    invoke-static {v6}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$300(Lcom/android/contacts/editor/TextFieldsEditorView;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$500(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v6

    const-string v7, "vnd.sec.contact.sim2"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNumberLength(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v4, v6, 0x1

    .line 561
    :goto_0
    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    #getter for: Lcom/android/contacts/editor/TextFieldsEditorView;->mExtFullyOccupiedCaseLen:I
    invoke-static {v6}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$700(Lcom/android/contacts/editor/TextFieldsEditorView;)I

    move-result v6

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    #getter for: Lcom/android/contacts/editor/TextFieldsEditorView;->mExtFullyOccupiedCaseLen:I
    invoke-static {v6}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$700(Lcom/android/contacts/editor/TextFieldsEditorView;)I

    move-result v6

    add-int/lit8 v4, v6, 0x1

    .line 570
    :cond_2
    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->val$fieldView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 571
    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->val$fieldView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v4

    .line 573
    :cond_3
    new-array v0, v8, [Landroid/text/InputFilter;

    .line 574
    .local v0, FilterArray:[Landroid/text/InputFilter;
    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v6, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v0, v9

    .line 575
    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->val$fieldView:Landroid/widget/EditText;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 634
    .end local v0           #FilterArray:[Landroid/text/InputFilter;
    .end local v4           #length:I
    :cond_4
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Contact_EnableAutoGenerationPhoneticName"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v8, :cond_5

    const-string v6, "#phoneticName"

    iget-object v7, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->val$kind:Lcom/android/contacts/model/DataKind;

    iget-object v7, v7, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "#phoneticName"

    iget-object v7, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->val$column:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 639
    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    const-string v7, "data7"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lcom/android/contacts/editor/LabeledEditorView;->onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    const-string v7, "data8"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lcom/android/contacts/editor/LabeledEditorView;->onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    const-string v7, "data9"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lcom/android/contacts/editor/LabeledEditorView;->onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    :cond_5
    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    iget-object v7, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->val$column:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/contacts/editor/LabeledEditorView;->onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    :cond_6
    return-void

    .line 556
    .restart local v4       #length:I
    :cond_7
    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$600(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v6

    const-string v7, "vnd.sec.contact.sim"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNumberLength(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v4, v6, 0x1

    goto/16 :goto_0

    .line 577
    :cond_8
    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$800(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNumberLength()I

    move-result v4

    .line 578
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v6

    if-nez v6, :cond_9

    .line 579
    :cond_9
    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    #getter for: Lcom/android/contacts/editor/TextFieldsEditorView;->isSIM2Account:Z
    invoke-static {v6}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$300(Lcom/android/contacts/editor/TextFieldsEditorView;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$900(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v6

    const-string v7, "vnd.sec.contact.sim2"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNumberLength(Ljava/lang/String;)I

    move-result v4

    .line 584
    :goto_2
    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    #getter for: Lcom/android/contacts/editor/TextFieldsEditorView;->mExtFullyOccupiedCaseLen:I
    invoke-static {v6}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$700(Lcom/android/contacts/editor/TextFieldsEditorView;)I

    move-result v6

    if-lez v6, :cond_a

    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    #getter for: Lcom/android/contacts/editor/TextFieldsEditorView;->mExtFullyOccupiedCaseLen:I
    invoke-static {v6}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$700(Lcom/android/contacts/editor/TextFieldsEditorView;)I

    move-result v4

    .line 593
    :cond_a
    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->val$fieldView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    if-ge v4, v6, :cond_b

    .line 594
    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->val$fieldView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v4

    .line 595
    :cond_b
    new-array v0, v8, [Landroid/text/InputFilter;

    .line 596
    .restart local v0       #FilterArray:[Landroid/text/InputFilter;
    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v6, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v0, v9

    .line 597
    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->val$fieldView:Landroid/widget/EditText;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_1

    .line 579
    .end local v0           #FilterArray:[Landroid/text/InputFilter;
    :cond_c
    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$1000(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v6

    const-string v7, "vnd.sec.contact.sim"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNumberLength(Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    .line 599
    .end local v4           #length:I
    :cond_d
    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    #getter for: Lcom/android/contacts/editor/TextFieldsEditorView;->isSIMAccount:Z
    invoke-static {v6}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$200(Lcom/android/contacts/editor/TextFieldsEditorView;)Z

    move-result v6

    if-eq v6, v8, :cond_e

    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    #getter for: Lcom/android/contacts/editor/TextFieldsEditorView;->isSIM2Account:Z
    invoke-static {v6}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$300(Lcom/android/contacts/editor/TextFieldsEditorView;)Z

    move-result v6

    if-ne v6, v8, :cond_4

    :cond_e
    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->val$kind:Lcom/android/contacts/model/DataKind;

    iget-object v6, v6, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    const-string v7, "#displayName"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 600
    const/4 v5, 0x0

    .line 606
    .local v5, maxByte:I
    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    #getter for: Lcom/android/contacts/editor/TextFieldsEditorView;->isSIM2Account:Z
    invoke-static {v6}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$300(Lcom/android/contacts/editor/TextFieldsEditorView;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v6

    const-string v7, "vnd.sec.contact.sim2"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNameLength(Ljava/lang/String;)I

    move-result v5

    .line 611
    :goto_3
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 612
    .local v1, after_text:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Contact_EnableKsc5601Encoding"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 614
    const-string v6, "KSC5601"

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 615
    .local v3, getbyte:[B
    array-length v6, v3

    iput v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->totalTextByte:I

    .line 626
    .end local v3           #getbyte:[B
    :goto_4
    iget v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->totalTextByte:I

    if-le v6, v5, :cond_4

    .line 627
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 629
    .end local v1           #after_text:Ljava/lang/String;
    :catch_0
    move-exception v6

    goto/16 :goto_1

    .line 606
    :cond_f
    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v6

    const-string v7, "vnd.sec.contact.sim"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNameLength(Ljava/lang/String;)I

    move-result v5

    goto :goto_3

    .line 617
    .restart local v1       #after_text:Ljava/lang/String;
    :cond_10
    :try_start_1
    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    iget-object v7, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->val$fieldView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/contacts/editor/TextFieldsEditorView;->chkKorean(Ljava/lang/String;)Z
    invoke-static {v6, v7}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$100(Lcom/android/contacts/editor/TextFieldsEditorView;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 618
    const-string v6, "ISO-10646-UCS-2"

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 619
    .restart local v3       #getbyte:[B
    array-length v6, v3

    iput v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->totalTextByte:I

    goto :goto_4

    .line 621
    .end local v3           #getbyte:[B
    :cond_11
    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$1100(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v2

    .line 622
    .local v2, getByte:[B
    array-length v6, v2

    iput v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->totalTextByte:I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 649
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 653
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt v0, p2, :cond_5

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const v1, 0xd7a3

    if-gt v0, v1, :cond_0

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const v1, 0xac00

    if-ge v0, v1, :cond_4

    :cond_0
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x11ff

    if-gt v0, v1, :cond_1

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x1100

    if-ge v0, v1, :cond_4

    :cond_1
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const v1, 0xd7fb

    if-gt v0, v1, :cond_2

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const v1, 0xd7b0

    if-ge v0, v1, :cond_4

    :cond_2
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const v1, 0xa97c

    if-gt v0, v1, :cond_3

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const v1, 0xa960

    if-ge v0, v1, :cond_4

    :cond_3
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x318e

    if-gt v0, v1, :cond_5

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x3130

    if-lt v0, v1, :cond_5

    .line 659
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->isIncludeKor:Z

    .line 661
    :cond_5
    return-void
.end method
