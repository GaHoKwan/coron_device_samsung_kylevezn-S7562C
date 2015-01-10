.class Lcom/android/mms/ui/ComposeMessageFragment$100;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/widget/HoverPopupWindow$HoverPopupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->setAttachmentList(Lcom/android/mms/model/SlideshowModel;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$max_width:I

.field final synthetic val$min_width:I

.field final synthetic val$rawAttachments:Ljava/util/ArrayList;

.field final synthetic val$rawAttachments_size:I

.field final synthetic val$restrictedrawAttachments:Ljava/util/ArrayList;

.field final synthetic val$vAttachHoverInfo:Landroid/view/View;

.field final synthetic val$vAttachmentHoverfooter:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/util/ArrayList;Landroid/view/View;ILandroid/view/View;Ljava/util/ArrayList;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 10057
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$100;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$100;->val$restrictedrawAttachments:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageFragment$100;->val$vAttachHoverInfo:Landroid/view/View;

    iput p4, p0, Lcom/android/mms/ui/ComposeMessageFragment$100;->val$rawAttachments_size:I

    iput-object p5, p0, Lcom/android/mms/ui/ComposeMessageFragment$100;->val$vAttachmentHoverfooter:Landroid/view/View;

    iput-object p6, p0, Lcom/android/mms/ui/ComposeMessageFragment$100;->val$rawAttachments:Ljava/util/ArrayList;

    iput p7, p0, Lcom/android/mms/ui/ComposeMessageFragment$100;->val$min_width:I

    iput p8, p0, Lcom/android/mms/ui/ComposeMessageFragment$100;->val$max_width:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetContentView(Landroid/view/View;Landroid/widget/HoverPopupWindow;)Z
    .locals 19
    .parameter "parentView"
    .parameter "hpw"

    .prologue
    .line 10060
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$100;->val$restrictedrawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x5

    if-le v13, v14, :cond_0

    .line 10061
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$100;->val$restrictedrawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v4, v13, -0x1

    .local v4, i:I
    :goto_0
    const/4 v13, 0x5

    if-lt v4, v13, :cond_0

    .line 10062
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$100;->val$restrictedrawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 10061
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 10065
    .end local v4           #i:I
    :cond_0
    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentHoverListAdapter;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$100;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment$100;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v14}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v14

    const v15, 0x7f03001c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$100;->val$restrictedrawAttachments:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v1, v13, v14, v15, v0}, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentHoverListAdapter;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 10067
    .local v1, arrayAdapter:Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentHoverListAdapter;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$100;->val$vAttachHoverInfo:Landroid/view/View;

    const v14, 0x7f0e0022

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ListView;

    invoke-virtual {v13, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 10069
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$100;->val$rawAttachments_size:I

    const/4 v14, 0x1

    if-le v13, v14, :cond_3

    .line 10070
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$100;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListText:Landroid/widget/TextView;
    invoke-static {v13}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 10075
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$100;->val$rawAttachments_size:I

    const/4 v14, 0x5

    if-le v13, v14, :cond_1

    .line 10077
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$100;->val$vAttachHoverInfo:Landroid/view/View;

    const v14, 0x7f0e0022

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ListView;

    invoke-virtual {v13}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v13

    if-nez v13, :cond_1

    .line 10078
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$100;->val$vAttachHoverInfo:Landroid/view/View;

    const v14, 0x7f0e0022

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment$100;->val$vAttachmentHoverfooter:Landroid/view/View;

    invoke-virtual {v13, v14}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 10079
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$100;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v13}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0b0005

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/ComposeMessageFragment$100;->val$rawAttachments_size:I

    add-int/lit8 v15, v15, -0x3

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, ""

    aput-object v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$100;->val$rawAttachments_size:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x3

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 10080
    .local v2, attachmentstr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$100;->val$vAttachHoverInfo:Landroid/view/View;

    const v14, 0x7f0e00c1

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10084
    .end local v2           #attachmentstr:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    .restart local v4       #i:I
    const/4 v6, 0x0

    .local v6, maxlength:I
    const/4 v5, 0x0

    .line 10085
    .local v5, maxitem:I
    const/4 v10, 0x0

    .line 10086
    .local v10, strWidth:I
    const/4 v9, 0x0

    .line 10088
    .local v9, restricted_size:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$100;->val$restrictedrawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x5

    if-le v13, v14, :cond_4

    const/4 v9, 0x5

    .line 10091
    :goto_2
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v9, :cond_5

    .line 10093
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$100;->val$rawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v13}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v3

    .line 10094
    .local v3, fileName:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    if-le v13, v6, :cond_2

    .line 10095
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    .line 10096
    move v5, v4

    .line 10091
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 10072
    .end local v3           #fileName:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #maxitem:I
    .end local v6           #maxlength:I
    .end local v9           #restricted_size:I
    .end local v10           #strWidth:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$100;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListText:Landroid/widget/TextView;
    invoke-static {v13}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    goto/16 :goto_1

    .line 10089
    .restart local v4       #i:I
    .restart local v5       #maxitem:I
    .restart local v6       #maxlength:I
    .restart local v9       #restricted_size:I
    .restart local v10       #strWidth:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$100;->val$restrictedrawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v9

    goto :goto_2

    .line 10100
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$100;->val$rawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v13}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v7

    .line 10101
    .local v7, maxstring:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 10102
    .local v11, tempName:Ljava/lang/StringBuffer;
    const-string v13, ".CDW "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10103
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 10105
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$100;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListText:Landroid/widget/TextView;
    invoke-static {v13}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment$100;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListText:Landroid/widget/TextView;
    invoke-static {v14}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getPaddingLeft()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment$100;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListText:Landroid/widget/TextView;
    invoke-static {v14}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getPaddingRight()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment$100;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListText:Landroid/widget/TextView;
    invoke-static {v14}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getPaddingStart()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v13, v14

    float-to-int v12, v13

    .line 10107
    .local v12, width:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$100;->val$rawAttachments_size:I

    const/4 v14, 0x1

    if-le v13, v14, :cond_8

    .line 10108
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$100;->val$min_width:I

    if-ge v12, v13, :cond_6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/mms/ui/ComposeMessageFragment$100;->val$min_width:I

    .line 10109
    :cond_6
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$100;->val$max_width:I

    if-le v12, v13, :cond_7

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/mms/ui/ComposeMessageFragment$100;->val$max_width:I

    .line 10110
    :cond_7
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v13, -0x2

    invoke-direct {v8, v12, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 10111
    .local v8, p:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$100;->val$vAttachHoverInfo:Landroid/view/View;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v8}, Landroid/widget/HoverPopupWindow;->setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10116
    .end local v8           #p:Landroid/view/ViewGroup$LayoutParams;
    :goto_4
    const/4 v13, 0x1

    return v13

    .line 10114
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$100;->val$vAttachHoverInfo:Landroid/view/View;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/widget/HoverPopupWindow;->setContent(Landroid/view/View;)V

    goto :goto_4
.end method
