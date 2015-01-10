.class public Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;
.super Landroid/view/ViewGroup;
.source "ContactListItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ContactListItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactListItemGroup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactListItemView;


# direct methods
.method public constructor <init>(Lcom/android/contacts/list/ContactListItemView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 1907
    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    .line 1908
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 1909
    return-void
.end method


# virtual methods
.method protected layoutLeftSideForMirroring(IIII)I
    .locals 13
    .parameter "height"
    .parameter "topBound"
    .parameter "bottomBound"
    .parameter "leftBound"

    .prologue
    .line 2320
    move/from16 v5, p4

    .line 2321
    .local v5, leftBoundForPresenceIcon:I
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$2300(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2322
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$2300(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v8

    .line 2323
    .local v8, presenceIconWidth:I
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$2300(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    .line 2324
    .local v6, presenceIconHeight:I
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIconMarginTop:I
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$4800(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v9

    add-int v7, p2, v9

    .line 2325
    .local v7, presenceIconTop:I
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$2300(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v9

    add-int v10, v5, v8

    add-int v11, v7, v6

    invoke-virtual {v9, v5, v7, v10, v11}, Landroid/widget/ImageView;->layout(IIII)V

    .line 2330
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$1500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v9

    add-int/2addr v9, v8

    add-int/2addr v5, v9

    .line 2334
    .end local v6           #presenceIconHeight:I
    .end local v7           #presenceIconTop:I
    .end local v8           #presenceIconWidth:I
    :cond_0
    move/from16 v4, p4

    .line 2335
    .local v4, leftBoundForAccountIconLayout:I
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v10, v10, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v10}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2336
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v9, v9, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    .line 2337
    .local v1, accountIconLayoutWidth:I
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIconMarginTop:I
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$4800(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v9

    add-int/2addr v9, p2

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mAccountIconSize:I
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$2900(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mGapBetweenPresenceIconAndAccountIcons:I
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$4900(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    add-int v2, v9, v10

    .line 2339
    .local v2, accountIconTop:I
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v9, v9, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    add-int v10, v4, v1

    iget-object v11, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mAccountIconLayoutHeight:I
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$2800(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v11

    add-int/2addr v11, v2

    invoke-virtual {v9, v4, v2, v10, v11}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 2344
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$1500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v9

    add-int/2addr v9, v1

    add-int/2addr v4, v9

    .line 2348
    .end local v1           #accountIconLayoutWidth:I
    .end local v2           #accountIconTop:I
    :cond_1
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$2300(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v10, v10, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v10}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2349
    :cond_2
    if-le v5, v4, :cond_4

    .line 2350
    move/from16 p4, v5

    .line 2357
    :cond_3
    :goto_0
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$2500(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2358
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$2500(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->getMeasuredWidth()I

    move-result v3

    .line 2359
    .local v3, buttonWidth:I
    sub-int p4, p4, v3

    .line 2360
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$2500(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v9

    add-int v10, p4, v3

    iget-object v11, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$3900(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v11

    sub-int v11, p1, v11

    move/from16 v0, p4

    invoke-virtual {v9, v0, p2, v10, v11}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->layout(IIII)V

    .line 2365
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    const/4 v10, 0x1

    #setter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerVisible:Z
    invoke-static {v9, v10}, Lcom/android/contacts/list/ContactListItemView;->access$5002(Lcom/android/contacts/list/ContactListItemView;Z)Z

    .line 2366
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #calls: Lcom/android/contacts/list/ContactListItemView;->ensureVerticalDivider()V
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$5100(Lcom/android/contacts/list/ContactListItemView;)V

    .line 2367
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerWidth:I
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$5200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v9

    sub-int p4, p4, v9

    .line 2368
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$5300(Lcom/android/contacts/list/ContactListItemView;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerMargin:I
    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$4400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    add-int/2addr v10, p2

    iget-object v11, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerWidth:I
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$5200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v11

    add-int v11, v11, p4

    iget-object v12, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerMargin:I
    invoke-static {v12}, Lcom/android/contacts/list/ContactListItemView;->access$4400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v12

    sub-int v12, p1, v12

    move/from16 v0, p4

    invoke-virtual {v9, v0, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2377
    .end local v3           #buttonWidth:I
    :goto_1
    return p4

    .line 2352
    :cond_4
    move/from16 p4, v4

    goto :goto_0

    .line 2374
    :cond_5
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    const/4 v10, 0x0

    #setter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerVisible:Z
    invoke-static {v9, v10}, Lcom/android/contacts/list/ContactListItemView;->access$5002(Lcom/android/contacts/list/ContactListItemView;Z)Z

    goto :goto_1
.end method

.method protected layoutRightSide(IIII)I
    .locals 16
    .parameter "height"
    .parameter "topBound"
    .parameter "bottomBound"
    .parameter "rightBound"

    .prologue
    .line 2218
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v12}, Lcom/android/contacts/list/ContactListItemView;->access$2600(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v11

    if-nez v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v12}, Lcom/android/contacts/list/ContactListItemView;->access$2600(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/contacts/list/ContactListItemView;->isInvisible(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 2219
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$2600(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->getMeasuredWidth()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIconMargin:I
    invoke-static {v12}, Lcom/android/contacts/list/ContactListItemView;->access$3800(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v12

    mul-int/lit8 v12, v12, 0x2

    sub-int v2, v11, v12

    .line 2220
    .local v2, ListbuttonWidth:I
    sub-int p4, p4, v2

    .line 2221
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$2600(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v11

    add-int v12, p4, v2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I
    invoke-static {v13}, Lcom/android/contacts/list/ContactListItemView;->access$3900(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v13

    sub-int v13, p1, v13

    move/from16 v0, p4

    move/from16 v1, p2

    invoke-virtual {v11, v0, v1, v12, v13}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->layout(IIII)V

    .line 2226
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    const/4 v12, 0x1

    #setter for: Lcom/android/contacts/list/ContactListItemView;->mListCallVerticalDividerVisible:Z
    invoke-static {v11, v12}, Lcom/android/contacts/list/ContactListItemView;->access$4002(Lcom/android/contacts/list/ContactListItemView;Z)Z

    .line 2227
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #calls: Lcom/android/contacts/list/ContactListItemView;->ensureListCallVerticalDivider()V
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$4100(Lcom/android/contacts/list/ContactListItemView;)V

    .line 2228
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mListCallVerticalDividerWidth:I
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$4200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v11

    sub-int p4, p4, v11

    .line 2229
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mHeaderVisible:Z
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$4300(Lcom/android/contacts/list/ContactListItemView;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 2230
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mListCallVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$4600(Lcom/android/contacts/list/ContactListItemView;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerMargin:I
    invoke-static {v12}, Lcom/android/contacts/list/ContactListItemView;->access$4400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v12

    mul-int/lit8 v12, v12, 0x3

    add-int v12, v12, p2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v13}, Lcom/android/contacts/list/ContactListItemView;->access$4500(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mListCallVerticalDividerWidth:I
    invoke-static {v13}, Lcom/android/contacts/list/ContactListItemView;->access$4200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v13

    add-int v13, v13, p4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerMargin:I
    invoke-static {v14}, Lcom/android/contacts/list/ContactListItemView;->access$4400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v14

    mul-int/lit8 v14, v14, 0x3

    sub-int v14, p1, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/android/contacts/list/ContactListItemView;->access$4500(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v14, v15

    move/from16 v0, p4

    invoke-virtual {v11, v0, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2242
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIconMargin:I
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$3800(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v11

    sub-int p4, p4, v11

    .line 2248
    .end local v2           #ListbuttonWidth:I
    :goto_1
    move/from16 v10, p4

    .line 2249
    .local v10, rightBoundForPresenceIcon:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$4700(Lcom/android/contacts/list/ContactListItemView;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 2250
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$1500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v11

    sub-int/2addr v10, v11

    .line 2252
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static {v12}, Lcom/android/contacts/list/ContactListItemView;->access$2300(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2253
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$2300(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v8

    .line 2254
    .local v8, presenceIconWidth:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$2300(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    .line 2255
    .local v6, presenceIconHeight:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIconMarginTop:I
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$4800(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v11

    add-int v7, p2, v11

    .line 2256
    .local v7, presenceIconTop:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$2300(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v11

    sub-int v12, v10, v8

    add-int v13, v7, v6

    invoke-virtual {v11, v12, v7, v10, v13}, Landroid/widget/ImageView;->layout(IIII)V

    .line 2261
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$1500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v11

    add-int/2addr v11, v8

    sub-int/2addr v10, v11

    .line 2265
    .end local v6           #presenceIconHeight:I
    .end local v7           #presenceIconTop:I
    .end local v8           #presenceIconWidth:I
    :cond_2
    move/from16 v9, p4

    .line 2266
    .local v9, rightBoundForAccountIconLayout:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$4700(Lcom/android/contacts/list/ContactListItemView;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 2267
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$1500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v11

    sub-int/2addr v9, v11

    .line 2269
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v12, v12, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v12}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2270
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v11, v11, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    .line 2271
    .local v3, accountIconLayoutWidth:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIconMarginTop:I
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$4800(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v11

    add-int v11, v11, p2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mAccountIconSize:I
    invoke-static {v12}, Lcom/android/contacts/list/ContactListItemView;->access$2900(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v12

    add-int/2addr v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mGapBetweenPresenceIconAndAccountIcons:I
    invoke-static {v12}, Lcom/android/contacts/list/ContactListItemView;->access$4900(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v12

    add-int v4, v11, v12

    .line 2273
    .local v4, accountIconTop:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v11, v11, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    sub-int v12, v9, v3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mAccountIconLayoutHeight:I
    invoke-static {v13}, Lcom/android/contacts/list/ContactListItemView;->access$2800(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v13

    add-int/2addr v13, v4

    invoke-virtual {v11, v12, v4, v9, v13}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 2278
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$1500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v11

    add-int/2addr v11, v3

    sub-int/2addr v9, v11

    .line 2282
    .end local v3           #accountIconLayoutWidth:I
    .end local v4           #accountIconTop:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static {v12}, Lcom/android/contacts/list/ContactListItemView;->access$2300(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v11

    if-nez v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v12, v12, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v12}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2283
    :cond_5
    if-ge v10, v9, :cond_9

    .line 2284
    move/from16 p4, v10

    .line 2291
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v12}, Lcom/android/contacts/list/ContactListItemView;->access$2500(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 2292
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$2500(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->getMeasuredWidth()I

    move-result v5

    .line 2293
    .local v5, buttonWidth:I
    sub-int p4, p4, v5

    .line 2294
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$2500(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v11

    add-int v12, p4, v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I
    invoke-static {v13}, Lcom/android/contacts/list/ContactListItemView;->access$3900(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v13

    sub-int v13, p1, v13

    move/from16 v0, p4

    move/from16 v1, p2

    invoke-virtual {v11, v0, v1, v12, v13}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->layout(IIII)V

    .line 2299
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    const/4 v12, 0x1

    #setter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerVisible:Z
    invoke-static {v11, v12}, Lcom/android/contacts/list/ContactListItemView;->access$5002(Lcom/android/contacts/list/ContactListItemView;Z)Z

    .line 2300
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #calls: Lcom/android/contacts/list/ContactListItemView;->ensureVerticalDivider()V
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$5100(Lcom/android/contacts/list/ContactListItemView;)V

    .line 2301
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerWidth:I
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$5200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v11

    sub-int p4, p4, v11

    .line 2302
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$5300(Lcom/android/contacts/list/ContactListItemView;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerMargin:I
    invoke-static {v12}, Lcom/android/contacts/list/ContactListItemView;->access$4400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v12

    add-int v12, v12, p2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerWidth:I
    invoke-static {v13}, Lcom/android/contacts/list/ContactListItemView;->access$5200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v13

    add-int v13, v13, p4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerMargin:I
    invoke-static {v14}, Lcom/android/contacts/list/ContactListItemView;->access$4400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v14

    sub-int v14, p1, v14

    move/from16 v0, p4

    invoke-virtual {v11, v0, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2311
    .end local v5           #buttonWidth:I
    :goto_3
    return p4

    .line 2236
    .end local v9           #rightBoundForAccountIconLayout:I
    .end local v10           #rightBoundForPresenceIcon:I
    .restart local v2       #ListbuttonWidth:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mListCallVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$4600(Lcom/android/contacts/list/ContactListItemView;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerMargin:I
    invoke-static {v12}, Lcom/android/contacts/list/ContactListItemView;->access$4400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v12

    mul-int/lit8 v12, v12, 0x3

    add-int v12, v12, p2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mListCallVerticalDividerWidth:I
    invoke-static {v13}, Lcom/android/contacts/list/ContactListItemView;->access$4200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v13

    add-int v13, v13, p4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerMargin:I
    invoke-static {v14}, Lcom/android/contacts/list/ContactListItemView;->access$4400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v14

    mul-int/lit8 v14, v14, 0x3

    sub-int v14, p1, v14

    move/from16 v0, p4

    invoke-virtual {v11, v0, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_0

    .line 2244
    .end local v2           #ListbuttonWidth:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    const/4 v12, 0x0

    #setter for: Lcom/android/contacts/list/ContactListItemView;->mListCallVerticalDividerVisible:Z
    invoke-static {v11, v12}, Lcom/android/contacts/list/ContactListItemView;->access$4002(Lcom/android/contacts/list/ContactListItemView;Z)Z

    goto/16 :goto_1

    .line 2286
    .restart local v9       #rightBoundForAccountIconLayout:I
    .restart local v10       #rightBoundForPresenceIcon:I
    :cond_9
    move/from16 p4, v9

    goto/16 :goto_2

    .line 2308
    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    const/4 v12, 0x0

    #setter for: Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerVisible:Z
    invoke-static {v11, v12}, Lcom/android/contacts/list/ContactListItemView;->access$5002(Lcom/android/contacts/list/ContactListItemView;Z)Z

    goto :goto_3
.end method

.method protected onLayout(ZIIII)V
    .locals 22
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2018
    sub-int v8, p5, p3

    .line 2019
    .local v8, height:I
    sub-int v17, p4, p2

    .line 2022
    .local v17, width:I
    const/4 v15, 0x0

    .line 2023
    .local v15, topBound:I
    move v4, v8

    .line 2024
    .local v4, bottomBound:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->getPaddingLeft()I

    move-result v9

    .line 2025
    .local v9, leftBound:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->getPaddingRight()I

    move-result v18

    sub-int v12, v17, v18

    .line 2032
    .local v12, rightBound:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->getCheckBoxPosition()Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    move-result-object v18

    sget-object v19, Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_e

    .line 2033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$900(Lcom/android/contacts/list/ContactListItemView;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 2034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$900(Lcom/android/contacts/list/ContactListItemView;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getMeasuredWidth()I

    move-result v6

    .line 2035
    .local v6, checkBoxWidth:I
    sub-int v18, v4, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBoxHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    sub-int v18, v18, v19

    div-int/lit8 v18, v18, 0x2

    add-int v5, v15, v18

    .line 2036
    .local v5, checkBoxTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBoxMarginLeft:I
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$1000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v18

    add-int v9, v9, v18

    .line 2037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$900(Lcom/android/contacts/list/ContactListItemView;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v18

    add-int v19, v9, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBoxMarginRight:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$1100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBoxHeight:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$2700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v20, v20, v5

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v9, v5, v1, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->layout(IIII)V

    .line 2042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBoxMarginRight:I
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$1100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v18

    add-int v18, v18, v6

    add-int v9, v9, v18

    .line 2058
    .end local v5           #checkBoxTop:I
    .end local v6           #checkBoxWidth:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$3200(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/QuickContactBadge;

    move-result-object v18

    if-eqz v18, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$3200(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/QuickContactBadge;

    move-result-object v11

    .line 2059
    .local v11, photoView:Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->getPhotoPosition()Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    move-result-object v18

    sget-object v19, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_11

    .line 2061
    if-eqz v11, :cond_10

    .line 2063
    sub-int v18, v4, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$3100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    sub-int v18, v18, v19

    div-int/lit8 v18, v18, 0x2

    add-int v10, v15, v18

    .line 2065
    .local v10, photoTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoMarginLeft:I
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$1400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v18

    add-int v9, v9, v18

    .line 2066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$3400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v18

    add-int v18, v18, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$3100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v19, v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v9, v10, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 2073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$3500(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 2075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$3500(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$3400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v19, v19, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$3100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v20, v20, v10

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v9, v10, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 2082
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$3400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$1500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v18, v18, v19

    add-int v9, v9, v18

    .line 2120
    .end local v10           #photoTop:I
    :cond_2
    :goto_2
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v18

    if-eqz v18, :cond_13

    .line 2121
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v15, v4, v9}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->layoutLeftSideForMirroring(IIII)I

    move-result v9

    .line 2127
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mSnippetTextViewHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$600(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v16, v18, v19

    .line 2129
    .local v16, totalTextHeight:I
    add-int v18, v4, v15

    sub-int v18, v18, v16

    div-int/lit8 v14, v18, 0x2

    .line 2133
    .local v14, textTopBound:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 2134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v19, v19, v14

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v9, v14, v12, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 2138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v18

    add-int v14, v14, v18

    .line 2142
    :cond_3
    move v13, v9

    .line 2144
    .local v13, statusLeftBound:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2400(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 2145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$2400(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v19, v19, v14

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v13, v14, v12, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 2151
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2400(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v18

    if-nez v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2300(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 2152
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v18

    add-int v14, v14, v18

    .line 2156
    :cond_6
    move v7, v9

    .line 2157
    .local v7, dataLeftBound:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$1800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 2158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$1800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v19, v19, v14

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v9, v14, v12, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 2162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v18

    add-int v14, v14, v18

    .line 2165
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$1900(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 2166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$1900(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v19, v19, v14

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v9, v14, v12, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 2170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v18

    add-int v14, v14, v18

    .line 2174
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2000(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 2175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->getPhotoPosition()Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    move-result-object v18

    sget-object v19, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_14

    .line 2177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$2000(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2000(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v19

    sub-int v19, v12, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v20, v20, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelViewHeight:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/list/ContactListItemView;->access$300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v21

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/list/ContactListItemView;->access$500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v21

    add-int v21, v21, v14

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v12, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 2181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$2000(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v18

    sub-int v12, v12, v18

    .line 2193
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2100(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 2194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$2100(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v19, v19, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mDataViewHeight:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v20, v20, v14

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v7, v1, v12, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 2199
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2000(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v18

    if-nez v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2100(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 2200
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v18

    add-int v14, v14, v18

    .line 2203
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2200(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 2204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$2200(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mSnippetTextViewHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$600(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v19, v19, v14

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v9, v14, v12, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 2209
    :cond_d
    return-void

    .line 2045
    .end local v7           #dataLeftBound:I
    .end local v11           #photoView:Landroid/view/View;
    .end local v13           #statusLeftBound:I
    .end local v14           #textTopBound:I
    .end local v16           #totalTextHeight:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$900(Lcom/android/contacts/list/ContactListItemView;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 2046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$900(Lcom/android/contacts/list/ContactListItemView;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getMeasuredWidth()I

    move-result v6

    .line 2047
    .restart local v6       #checkBoxWidth:I
    sub-int v18, v4, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBoxHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    sub-int v18, v18, v19

    div-int/lit8 v18, v18, 0x2

    add-int v5, v15, v18

    .line 2048
    .restart local v5       #checkBoxTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBoxMarginRight:I
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$1100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v18

    sub-int v12, v12, v18

    .line 2049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$900(Lcom/android/contacts/list/ContactListItemView;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v18

    sub-int v19, v12, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBoxMarginLeft:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$1000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBoxHeight:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$2700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v20, v20, v5

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v5, v12, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->layout(IIII)V

    .line 2054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBoxMarginLeft:I
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$1000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v18

    add-int v18, v18, v6

    sub-int v12, v12, v18

    goto/16 :goto_0

    .line 2058
    .end local v5           #checkBoxTop:I
    .end local v6           #checkBoxWidth:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$3300(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v11

    goto/16 :goto_1

    .line 2083
    .restart local v11       #photoView:Landroid/view/View;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$3600(Lcom/android/contacts/list/ContactListItemView;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 2086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$3400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$1500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoMarginLeft:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$1400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v18, v18, v19

    add-int v9, v9, v18

    goto/16 :goto_2

    .line 2090
    :cond_11
    if-eqz v11, :cond_2

    .line 2092
    sub-int v18, v4, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$3100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    sub-int v18, v18, v19

    div-int/lit8 v18, v18, 0x2

    add-int v10, v15, v18

    .line 2094
    .restart local v10       #photoTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoMarginLeft:I
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$1400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v18

    sub-int v12, v12, v18

    .line 2095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$3400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v18

    sub-int v18, v12, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$3100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v19, v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v10, v12, v1}, Landroid/view/View;->layout(IIII)V

    .line 2102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$3500(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 2104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mStarredIcon:Landroid/widget/ImageView;
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$3500(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$3400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    sub-int v19, v12, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$3100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v20, v20, v10

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v10, v12, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 2111
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$3400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$1500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v18, v18, v19

    sub-int v12, v12, v18

    goto/16 :goto_2

    .line 2123
    .end local v10           #photoTop:I
    :cond_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v15, v4, v12}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->layoutRightSide(IIII)I

    move-result v12

    goto/16 :goto_3

    .line 2184
    .restart local v7       #dataLeftBound:I
    .restart local v13       #statusLeftBound:I
    .restart local v14       #textTopBound:I
    .restart local v16       #totalTextHeight:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$2000(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v18

    add-int v7, v9, v18

    .line 2185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$2000(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v19, v19, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelViewHeight:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v20, v20, v14

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v9, v1, v7, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 2189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v18, v0

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mGapBetweenLabelAndData:I
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/list/ContactListItemView;->access$3700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v18

    add-int v7, v7, v18

    goto/16 :goto_4
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v8, 0x0

    .line 1915
    invoke-static {v8, p1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->resolveSize(II)I

    move-result v4

    .line 1916
    .local v4, width:I
    const/4 v0, 0x0

    .line 1917
    .local v0, height:I
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPreferredHeight:I
    invoke-static {v5}, Lcom/android/contacts/list/ContactListItemView;->access$000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v1

    .line 1919
    .local v1, preferredHeight:I
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #setter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I
    invoke-static {v5, v8}, Lcom/android/contacts/list/ContactListItemView;->access$102(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 1920
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #setter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I
    invoke-static {v5, v8}, Lcom/android/contacts/list/ContactListItemView;->access$202(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 1921
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #setter for: Lcom/android/contacts/list/ContactListItemView;->mLabelViewHeight:I
    invoke-static {v5, v8}, Lcom/android/contacts/list/ContactListItemView;->access$302(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 1922
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #setter for: Lcom/android/contacts/list/ContactListItemView;->mDataViewHeight:I
    invoke-static {v5, v8}, Lcom/android/contacts/list/ContactListItemView;->access$402(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 1923
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #setter for: Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I
    invoke-static {v5, v8}, Lcom/android/contacts/list/ContactListItemView;->access$502(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 1924
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #setter for: Lcom/android/contacts/list/ContactListItemView;->mSnippetTextViewHeight:I
    invoke-static {v5, v8}, Lcom/android/contacts/list/ContactListItemView;->access$602(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 1925
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #setter for: Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I
    invoke-static {v5, v8}, Lcom/android/contacts/list/ContactListItemView;->access$702(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 1928
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/contacts/list/ContactListItemView;->access$800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1930
    const/4 v2, 0x0

    .line 1931
    .local v2, remainWidth:I
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v6}, Lcom/android/contacts/list/ContactListItemView;->access$900(Lcom/android/contacts/list/ContactListItemView;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1932
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v5}, Lcom/android/contacts/list/ContactListItemView;->access$900(Lcom/android/contacts/list/ContactListItemView;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getMeasuredWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBoxMarginLeft:I
    invoke-static {v6}, Lcom/android/contacts/list/ContactListItemView;->access$1000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBoxMarginRight:I
    invoke-static {v6}, Lcom/android/contacts/list/ContactListItemView;->access$1100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v6

    add-int v3, v5, v6

    .line 1933
    .local v3, totalCheckBoxWidth:I
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->specWidth:I
    invoke-static {v5}, Lcom/android/contacts/list/ContactListItemView;->access$1200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v5

    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mDefaultPhotoViewSize:I
    invoke-static {v6}, Lcom/android/contacts/list/ContactListItemView;->access$1300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v6

    iget-object v7, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoMarginLeft:I
    invoke-static {v7}, Lcom/android/contacts/list/ContactListItemView;->access$1400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I
    invoke-static {v7}, Lcom/android/contacts/list/ContactListItemView;->access$1500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mTextIndent:I
    invoke-static {v7}, Lcom/android/contacts/list/ContactListItemView;->access$1600(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mMarginRightForFastScroll:I
    invoke-static {v7}, Lcom/android/contacts/list/ContactListItemView;->access$1700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v3

    sub-int v2, v5, v6

    .line 1937
    .end local v3           #totalCheckBoxWidth:I
    :goto_0
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/contacts/list/ContactListItemView;->access$800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v5

    const/high16 v6, 0x4000

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, v6, v8}, Landroid/widget/TextView;->measure(II)V

    .line 1938
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/contacts/list/ContactListItemView;->access$800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    #setter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I
    invoke-static {v5, v6}, Lcom/android/contacts/list/ContactListItemView;->access$102(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 1941
    .end local v2           #remainWidth:I
    :cond_0
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/contacts/list/ContactListItemView;->access$1800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1942
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/contacts/list/ContactListItemView;->access$1800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v8, v8}, Landroid/widget/TextView;->measure(II)V

    .line 1943
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/contacts/list/ContactListItemView;->access$1800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    #setter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I
    invoke-static {v5, v6}, Lcom/android/contacts/list/ContactListItemView;->access$202(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 1946
    :cond_1
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/contacts/list/ContactListItemView;->access$1900(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1947
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/contacts/list/ContactListItemView;->access$1900(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v8, v8}, Landroid/widget/TextView;->measure(II)V

    .line 1948
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mGalTitleAndCompanyTextView:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/contacts/list/ContactListItemView;->access$1900(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    #setter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I
    invoke-static {v5, v6}, Lcom/android/contacts/list/ContactListItemView;->access$202(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 1951
    :cond_2
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/contacts/list/ContactListItemView;->access$2000(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1952
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/contacts/list/ContactListItemView;->access$2000(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v8, v8}, Landroid/widget/TextView;->measure(II)V

    .line 1953
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/contacts/list/ContactListItemView;->access$2000(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    #setter for: Lcom/android/contacts/list/ContactListItemView;->mLabelViewHeight:I
    invoke-static {v5, v6}, Lcom/android/contacts/list/ContactListItemView;->access$302(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 1957
    :cond_3
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/contacts/list/ContactListItemView;->access$2100(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1958
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/contacts/list/ContactListItemView;->access$2100(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v8, v8}, Landroid/widget/TextView;->measure(II)V

    .line 1959
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mDataViewHeight:I
    invoke-static {v6}, Lcom/android/contacts/list/ContactListItemView;->access$400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v6

    iget-object v7, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/contacts/list/ContactListItemView;->access$2100(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    #setter for: Lcom/android/contacts/list/ContactListItemView;->mDataViewHeight:I
    invoke-static {v5, v6}, Lcom/android/contacts/list/ContactListItemView;->access$402(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 1963
    :cond_4
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelViewHeight:I
    invoke-static {v6}, Lcom/android/contacts/list/ContactListItemView;->access$300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v6

    iget-object v7, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mDataViewHeight:I
    invoke-static {v7}, Lcom/android/contacts/list/ContactListItemView;->access$400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    #setter for: Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I
    invoke-static {v5, v6}, Lcom/android/contacts/list/ContactListItemView;->access$502(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 1965
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/contacts/list/ContactListItemView;->access$2200(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1966
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/contacts/list/ContactListItemView;->access$2200(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v8, v8}, Landroid/widget/TextView;->measure(II)V

    .line 1967
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/contacts/list/ContactListItemView;->access$2200(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    #setter for: Lcom/android/contacts/list/ContactListItemView;->mSnippetTextViewHeight:I
    invoke-static {v5, v6}, Lcom/android/contacts/list/ContactListItemView;->access$602(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 1971
    :cond_5
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/android/contacts/list/ContactListItemView;->access$2300(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1972
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/android/contacts/list/ContactListItemView;->access$2300(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v8, v8}, Landroid/widget/ImageView;->measure(II)V

    .line 1973
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/android/contacts/list/ContactListItemView;->access$2300(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    #setter for: Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I
    invoke-static {v5, v6}, Lcom/android/contacts/list/ContactListItemView;->access$702(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 1976
    :cond_6
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/contacts/list/ContactListItemView;->access$2400(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1977
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/contacts/list/ContactListItemView;->access$2400(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v8, v8}, Landroid/widget/TextView;->measure(II)V

    .line 1978
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I
    invoke-static {v6}, Lcom/android/contacts/list/ContactListItemView;->access$700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v6

    iget-object v7, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/contacts/list/ContactListItemView;->access$2400(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    #setter for: Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I
    invoke-static {v5, v6}, Lcom/android/contacts/list/ContactListItemView;->access$702(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 1983
    :cond_7
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I
    invoke-static {v5}, Lcom/android/contacts/list/ContactListItemView;->access$100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v5

    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I
    invoke-static {v6}, Lcom/android/contacts/list/ContactListItemView;->access$200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I
    invoke-static {v6}, Lcom/android/contacts/list/ContactListItemView;->access$500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mSnippetTextViewHeight:I
    invoke-static {v6}, Lcom/android/contacts/list/ContactListItemView;->access$600(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I
    invoke-static {v6}, Lcom/android/contacts/list/ContactListItemView;->access$700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->mPaddingTop:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->mPaddingBottom:I

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 1986
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v6}, Lcom/android/contacts/list/ContactListItemView;->access$2500(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1987
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v5}, Lcom/android/contacts/list/ContactListItemView;->access$2500(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v5

    invoke-virtual {v5, v8, v8}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->measure(II)V

    .line 1990
    :cond_8
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v6}, Lcom/android/contacts/list/ContactListItemView;->access$2600(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v6}, Lcom/android/contacts/list/ContactListItemView;->access$2600(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/contacts/list/ContactListItemView;->isInvisible(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1991
    :cond_9
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mListCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
    invoke-static {v5}, Lcom/android/contacts/list/ContactListItemView;->access$2600(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v5

    invoke-virtual {v5, v8, v8}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->measure(II)V

    .line 1995
    :cond_a
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v6}, Lcom/android/contacts/list/ContactListItemView;->access$900(Lcom/android/contacts/list/ContactListItemView;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1996
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v5}, Lcom/android/contacts/list/ContactListItemView;->access$900(Lcom/android/contacts/list/ContactListItemView;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v5

    invoke-virtual {v5, v8, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->measure(II)V

    .line 1997
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v6}, Lcom/android/contacts/list/ContactListItemView;->access$900(Lcom/android/contacts/list/ContactListItemView;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getMeasuredHeight()I

    move-result v6

    #setter for: Lcom/android/contacts/list/ContactListItemView;->mCheckBoxHeight:I
    invoke-static {v5, v6}, Lcom/android/contacts/list/ContactListItemView;->access$2702(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 2001
    :cond_b
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v6, v6, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2002
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v5, v5, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8, v8}, Landroid/widget/LinearLayout;->measure(II)V

    .line 2003
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mAccountIconSize:I
    invoke-static {v6}, Lcom/android/contacts/list/ContactListItemView;->access$2900(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v6

    #setter for: Lcom/android/contacts/list/ContactListItemView;->mAccountIconLayoutHeight:I
    invoke-static {v5, v6}, Lcom/android/contacts/list/ContactListItemView;->access$2802(Lcom/android/contacts/list/ContactListItemView;I)I

    .line 2007
    :cond_c
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #calls: Lcom/android/contacts/list/ContactListItemView;->ensurePhotoViewSize()V
    invoke-static {v5}, Lcom/android/contacts/list/ContactListItemView;->access$3000(Lcom/android/contacts/list/ContactListItemView;)V

    .line 2008
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I
    invoke-static {v5}, Lcom/android/contacts/list/ContactListItemView;->access$3100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v5

    iget v6, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->mPaddingBottom:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->mPaddingTop:I

    add-int/2addr v5, v6

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2011
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2013
    invoke-virtual {p0, v4, v0}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->setMeasuredDimension(II)V

    .line 2014
    return-void

    .line 1935
    .restart local v2       #remainWidth:I
    :cond_d
    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->specWidth:I
    invoke-static {v5}, Lcom/android/contacts/list/ContactListItemView;->access$1200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v5

    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mDefaultPhotoViewSize:I
    invoke-static {v6}, Lcom/android/contacts/list/ContactListItemView;->access$1300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v6

    iget-object v7, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mPhotoMarginLeft:I
    invoke-static {v7}, Lcom/android/contacts/list/ContactListItemView;->access$1400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I
    invoke-static {v7}, Lcom/android/contacts/list/ContactListItemView;->access$1500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mTextIndent:I
    invoke-static {v7}, Lcom/android/contacts/list/ContactListItemView;->access$1600(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    #getter for: Lcom/android/contacts/list/ContactListItemView;->mMarginRightForFastScroll:I
    invoke-static {v7}, Lcom/android/contacts/list/ContactListItemView;->access$1700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v7

    add-int/2addr v6, v7

    sub-int v2, v5, v6

    goto/16 :goto_0
.end method
