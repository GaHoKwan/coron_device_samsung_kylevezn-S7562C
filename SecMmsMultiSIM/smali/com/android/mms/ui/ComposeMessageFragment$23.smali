.class Lcom/android/mms/ui/ComposeMessageFragment$23;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/widget/HoverPopupWindow$HoverPopupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->initRecipientsEditor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$max_width:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2494
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$23;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$23;->val$max_width:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetContentView(Landroid/view/View;Landroid/widget/HoverPopupWindow;)Z
    .locals 11
    .parameter "parentView"
    .parameter "hpw"

    .prologue
    const/4 v10, 0x1

    .line 2537
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$23;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2538
    .local v3, recipients_size:I
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$23;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2540
    .local v2, recipients:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$23;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 2542
    .local v1, paint:Landroid/graphics/Paint;
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$23;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f03001f

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2543
    .local v4, vRecipientHoverInfo:Landroid/view/View;
    const v7, 0x7f0e00c5

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2544
    .local v5, vRecipientHoverTextView:Landroid/widget/TextView;
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2546
    if-le v3, v10, :cond_1

    .line 2548
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v5}, Landroid/view/View;->getPaddingStart()I

    move-result v9

    add-int/2addr v8, v9

    add-int v6, v7, v8

    .line 2552
    .local v6, width:I
    iget v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$23;->val$max_width:I

    if-le v6, v7, :cond_0

    iget v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$23;->val$max_width:I

    .line 2553
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v0, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2554
    .local v0, p:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p2, v4, v0}, Landroid/widget/HoverPopupWindow;->setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2556
    .end local v0           #p:Landroid/view/ViewGroup$LayoutParams;
    .end local v6           #width:I
    :cond_1
    return v10
.end method
