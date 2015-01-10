.class Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;
.super Landroid/widget/ArrayAdapter;
.source "LabeledEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/LabeledEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/contacts/model/AccountType$EditType;",
        ">;"
    }
.end annotation


# instance fields
.field private mHasCustomSelection:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mLabelTextColor:Landroid/content/res/ColorStateList;

.field private mTextColor:Landroid/content/res/ColorStateList;

.field final synthetic this$0:Lcom/android/contacts/editor/LabeledEditorView;


# direct methods
.method public constructor <init>(Lcom/android/contacts/editor/LabeledEditorView;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "context"

    .prologue
    .line 672
    iput-object p1, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    .line 673
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 674
    const-string v1, "layout_inflater"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 675
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0109

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->mTextColor:Landroid/content/res/ColorStateList;

    .line 676
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0114

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->mLabelTextColor:Landroid/content/res/ColorStateList;

    .line 678
    #getter for: Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/model/AccountType$EditType;
    invoke-static {p1}, Lcom/android/contacts/editor/LabeledEditorView;->access$500(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    if-eqz v1, :cond_0

    #getter for: Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/model/AccountType$EditType;
    invoke-static {p1}, Lcom/android/contacts/editor/LabeledEditorView;->access$500(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 681
    #getter for: Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-static {p1}, Lcom/android/contacts/editor/LabeledEditorView;->access$600(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    #getter for: Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/model/AccountType$EditType;
    invoke-static {p1}, Lcom/android/contacts/editor/LabeledEditorView;->access$500(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    iget-object v2, v2, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 682
    .local v0, customText:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 683
    sget-object v1, Lcom/android/contacts/editor/LabeledEditorView;->CUSTOM_SELECTION:Lcom/android/contacts/model/AccountType$EditType;

    invoke-virtual {p0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 684
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->mHasCustomSelection:Z

    .line 688
    .end local v0           #customText:Ljava/lang/String;
    :cond_0
    #getter for: Lcom/android/contacts/editor/LabeledEditorView;->mState:Lcom/android/contacts/model/EntityDelta;
    invoke-static {p1}, Lcom/android/contacts/editor/LabeledEditorView;->access$300(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/EntityDelta;

    move-result-object v1

    #getter for: Lcom/android/contacts/editor/LabeledEditorView;->mKind:Lcom/android/contacts/model/DataKind;
    invoke-static {p1}, Lcom/android/contacts/editor/LabeledEditorView;->access$400(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/DataKind;

    move-result-object v2

    #getter for: Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/model/AccountType$EditType;
    invoke-static {p1}, Lcom/android/contacts/editor/LabeledEditorView;->access$500(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/contacts/model/EntityModifier;->getValidTypes(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/AccountType$EditType;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 689
    return-void
.end method

.method private createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"
    .parameter "resource"

    .prologue
    const v6, 0x7f0400eb

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 711
    if-nez p2, :cond_3

    .line 712
    iget-object v3, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, p4, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 713
    .local v1, textView:Landroid/widget/TextView;
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 714
    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 716
    iget-object v3, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/contacts/editor/LabeledEditorView;->access$1100(Lcom/android/contacts/editor/LabeledEditorView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 717
    if-ne p4, v6, :cond_1

    .line 718
    iget-object v3, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 727
    :cond_0
    :goto_0
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 728
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 729
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 734
    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/AccountType$EditType;

    .line 736
    .local v2, type:Lcom/android/contacts/model/AccountType$EditType;
    sget-object v3, Lcom/android/contacts/editor/LabeledEditorView;->CUSTOM_SELECTION:Lcom/android/contacts/model/AccountType$EditType;

    if-ne v2, v3, :cond_5

    .line 737
    iget-object v3, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    #getter for: Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/model/AccountType$EditType;
    invoke-static {v3}, Lcom/android/contacts/editor/LabeledEditorView;->access$500(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v3

    iget-object v3, v3, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 738
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, v2, Lcom/android/contacts/model/AccountType$EditType;->labelRes:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 744
    .local v0, text:Ljava/lang/String;
    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 745
    return-object v1

    .line 720
    .end local v0           #text:Ljava/lang/String;
    .end local v2           #type:Lcom/android/contacts/model/AccountType$EditType;
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->mLabelTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 723
    :cond_2
    if-eq p4, v6, :cond_0

    .line 724
    iget-object v3, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .end local v1           #textView:Landroid/widget/TextView;
    :cond_3
    move-object v1, p2

    .line 731
    check-cast v1, Landroid/widget/TextView;

    .restart local v1       #textView:Landroid/widget/TextView;
    goto :goto_1

    .line 740
    .restart local v2       #type:Lcom/android/contacts/model/AccountType$EditType;
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    #getter for: Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-static {v3}, Lcom/android/contacts/editor/LabeledEditorView;->access$600(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    #getter for: Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/model/AccountType$EditType;
    invoke-static {v4}, Lcom/android/contacts/editor/LabeledEditorView;->access$500(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v4

    iget-object v4, v4, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #text:Ljava/lang/String;
    goto :goto_2

    .line 742
    .end local v0           #text:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, v2, Lcom/android/contacts/model/AccountType$EditType;->labelRes:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #text:Ljava/lang/String;
    goto :goto_2
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 703
    const v0, 0x7f0400eb

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 697
    const v0, 0x7f0400ec

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hasCustomSelection()Z
    .locals 1

    .prologue
    .line 692
    iget-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->mHasCustomSelection:Z

    return v0
.end method
