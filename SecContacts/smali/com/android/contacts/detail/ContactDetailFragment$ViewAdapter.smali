.class final Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ViewAdapter"
.end annotation


# instance fields
.field private final mPrimaryActionClickListener:Landroid/view/View$OnClickListener;

.field private final mSecondaryActionClickListener:Landroid/view/View$OnClickListener;

.field private final mThirdActionClickListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 3449
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 3953
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$4;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mPrimaryActionClickListener:Landroid/view/View$OnClickListener;

    .line 3991
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$5;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$5;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mSecondaryActionClickListener:Landroid/view/View$OnClickListener;

    .line 4007
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$6;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$6;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mThirdActionClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3449
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    return-void
.end method

.method private bindDetailView(ILandroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)V
    .locals 27
    .parameter "position"
    .parameter "view"
    .parameter "entry"

    .prologue
    .line 3674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/detail/ContactDetailFragment;->access$400(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 3675
    .local v11, resources:Landroid/content/res/Resources;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    .line 3677
    .local v21, views:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_9

    .line 3678
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->type:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3679
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->type:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 3682
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v23, v0

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v23 .. v23}, Lcom/android/contacts/detail/ContactDetailFragment;->access$400(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0c002d

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setMinimumHeight(I)V

    .line 3691
    :goto_0
    const-string v22, "alwasy_tab_mode_tablet"

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 3692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1000(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/LinearLayout;

    move-result-object v22

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1000(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/LinearLayout;

    move-result-object v22

    const v23, 0x7f09013d

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_0

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 3695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v22

    if-eqz v22, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v22

    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/android/contacts/activities/PeopleActivity;

    move/from16 v22, v0

    if-eqz v22, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v22

    check-cast v22, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual/range {v22 .. v22}, Lcom/android/contacts/activities/PeopleActivity;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v22

    check-cast v22, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual/range {v22 .. v22}, Lcom/android/contacts/activities/PeopleActivity;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v22

    if-nez v22, :cond_a

    .line 3699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1000(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/LinearLayout;

    move-result-object v22

    const v23, 0x7f09013d

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 3709
    :cond_0
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v22

    const-string v23, "CscFeature_IMS_EnableRCSPresence"

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 3710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2800(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->getIsRcs()Z

    move-result v22

    if-eqz v22, :cond_c

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_c

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v23, v0

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;
    invoke-static/range {v23 .. v23}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2800(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    const-string v23, "rcs_free_text"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 3712
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->data:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v23, v0

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;
    invoke-static/range {v23 .. v23}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2800(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->getFreeText()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3731
    :goto_2
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->data:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->setMaxLines(Landroid/widget/TextView;I)V

    .line 3734
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->footerLine:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_f

    .line 3735
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->footer:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->footerLine:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3736
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->footer:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 3742
    :goto_3
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->primaryIndicator:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    move/from16 v22, v0

    if-eqz v22, :cond_10

    const/16 v22, 0x0

    :goto_4
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3743
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->blacklistIndicator:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isBlacklist:Z

    move/from16 v22, v0

    if-eqz v22, :cond_11

    const/16 v22, 0x0

    :goto_5
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/detail/ContactDetailFragment;->access$400(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->presence:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/android/contacts/ContactPresenceIconUtil;->getPresenceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 3748
    .local v8, presenceIcon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->presenceIcon:Landroid/widget/ImageView;

    .line 3749
    .local v9, presenceIconView:Landroid/widget/ImageView;
    if-eqz v8, :cond_12

    .line 3750
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3751
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3756
    :goto_6
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    check-cast v5, Lcom/android/contacts/detail/ActionsViewContainer;

    .line 3758
    .local v5, actionsButtonContainer:Lcom/android/contacts/detail/ActionsViewContainer;
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3759
    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/contacts/detail/ActionsViewContainer;->setPosition(I)V

    .line 3761
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    move-object/from16 v22, v0

    if-nez v22, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/detail/ContactDetailFragment;->access$400(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v22

    const v23, 0x7f0d019d

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 3763
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    .line 3766
    :cond_2
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionButton:Landroid/widget/ImageView;

    .line 3767
    .local v4, actionView:Landroid/widget/ImageView;
    const/4 v3, 0x0

    .line 3768
    .local v3, actionIcon:Landroid/graphics/drawable/Drawable;
    const/4 v10, 0x0

    .line 3769
    .local v10, primaryActionDescription:Ljava/lang/String;
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_14

    .line 3770
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 3771
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3772
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3774
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    move/from16 v22, v0

    if-lez v22, :cond_13

    .line 3775
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionDescription:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3776
    invoke-virtual {v4, v10}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3786
    :goto_7
    move-object/from16 v0, v21

    iget-object v14, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->secondaryActionButton:Landroid/widget/ImageView;

    .line 3787
    .local v14, secondaryActionView:Landroid/widget/ImageView;
    const/4 v13, 0x0

    .line 3789
    .local v13, secondaryActionIcon:Landroid/graphics/drawable/Drawable;
    const/4 v12, 0x0

    .line 3790
    .local v12, secondaryActionDescription:Ljava/lang/String;
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionIcon:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_15

    .line 3791
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionIcon:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 3792
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionDescription:I

    move/from16 v22, v0

    if-lez v22, :cond_3

    .line 3793
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionDescription:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 3806
    :cond_3
    :goto_8
    move-object/from16 v0, v21

    iget-object v15, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->secondaryActionViewContainer:Landroid/view/View;

    .line 3807
    .local v15, secondaryActionViewContainer:Landroid/view/View;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    if-eqz v22, :cond_17

    if-eqz v13, :cond_17

    .line 3808
    invoke-virtual {v14, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3809
    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3810
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3811
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->secondaryActionDivider:Landroid/view/View;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 3812
    if-eqz v12, :cond_4

    .line 3813
    invoke-virtual {v14, v12}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3821
    :cond_4
    :goto_9
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->thirdActionButton:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    .line 3822
    .local v19, thirdActionView:Landroid/widget/ImageView;
    const/16 v18, 0x0

    .line 3823
    .local v18, thirdActionIcon:Landroid/graphics/drawable/Drawable;
    const/16 v17, 0x0

    .line 3824
    .local v17, thirdActionDescription:Ljava/lang/String;
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->thirdActionIcon:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    .line 3825
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->thirdActionIcon:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 3826
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->thirdActionDescription:I

    move/from16 v22, v0

    if-lez v22, :cond_5

    .line 3827
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionDescription:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 3832
    :cond_5
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->thirdActionViewContainer:Landroid/view/View;

    move-object/from16 v20, v0

    .line 3833
    .local v20, thirdActionViewContainer:Landroid/view/View;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->thirdIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    if-eqz v22, :cond_18

    if-eqz v18, :cond_18

    .line 3834
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3835
    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3836
    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3837
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->thirdActionDivider:Landroid/view/View;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 3838
    if-eqz v17, :cond_6

    .line 3839
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3868
    :cond_6
    :goto_a
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->accountIcon:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_19

    .line 3869
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->data:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 3870
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->connectionIcon:Lcom/sec/android/app/contacts/detail/ExpandableHeightGridView;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v25, v0

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/android/contacts/detail/ContactDetailFragment;->access$400(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->accountIcon:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-direct/range {v23 .. v26}, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3871
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->connectionIcon:Lcom/sec/android/app/contacts/detail/ExpandableHeightGridView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 3872
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->connectionIcon:Lcom/sec/android/app/contacts/detail/ExpandableHeightGridView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setEnabled(Z)V

    .line 3873
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->connectionIcon:Lcom/sec/android/app/contacts/detail/ExpandableHeightGridView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AdapterView;->setFocusable(Z)V

    .line 3874
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->connectionIcon:Lcom/sec/android/app/contacts/detail/ExpandableHeightGridView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setClickable(Z)V

    .line 3881
    :goto_b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v22

    const-string v23, "CscFeature_IMS_EnableRCSe"

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 3882
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    move/from16 v22, v0

    const v23, 0x7f02056a

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1b

    .line 3883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2800(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->setCurrentViewAndEntry(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)V

    .line 3884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2800(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->getIsRcs()Z

    move-result v22

    if-eqz v22, :cond_1a

    .line 3885
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 3889
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2800(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->updateUI()V

    .line 3905
    :cond_7
    :goto_d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v22

    const-string v23, "CscFeature_Contact_EnableAABYP"

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2900(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    move-result-object v22

    if-eqz v22, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2900(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->getValidTitlePosition()I

    move-result v22

    add-int/lit8 v23, p1, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1e

    .line 3913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2900(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->setIsProgressWidgetInvalid(Z)V

    .line 3921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2900(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    move-result-object v22

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->directorySvcUtilsAutoSyncIndicator:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->setAutoSyncIcon(Landroid/view/View;)V

    .line 3936
    :cond_8
    :goto_e
    return-void

    .line 3685
    .end local v3           #actionIcon:Landroid/graphics/drawable/Drawable;
    .end local v4           #actionView:Landroid/widget/ImageView;
    .end local v5           #actionsButtonContainer:Lcom/android/contacts/detail/ActionsViewContainer;
    .end local v8           #presenceIcon:Landroid/graphics/drawable/Drawable;
    .end local v9           #presenceIconView:Landroid/widget/ImageView;
    .end local v10           #primaryActionDescription:Ljava/lang/String;
    .end local v12           #secondaryActionDescription:Ljava/lang/String;
    .end local v13           #secondaryActionIcon:Landroid/graphics/drawable/Drawable;
    .end local v14           #secondaryActionView:Landroid/widget/ImageView;
    .end local v15           #secondaryActionViewContainer:Landroid/view/View;
    .end local v17           #thirdActionDescription:Ljava/lang/String;
    .end local v18           #thirdActionIcon:Landroid/graphics/drawable/Drawable;
    .end local v19           #thirdActionView:Landroid/widget/ImageView;
    .end local v20           #thirdActionViewContainer:Landroid/view/View;
    :cond_9
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->type:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 3687
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v23, v0

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v23 .. v23}, Lcom/android/contacts/detail/ContactDetailFragment;->access$400(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0c0092

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setMinimumHeight(I)V

    goto/16 :goto_0

    .line 3700
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->fromDialer:Z
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2700(Lcom/android/contacts/detail/ContactDetailFragment;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 3701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1000(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/LinearLayout;

    move-result-object v22

    const v23, 0x7f09013d

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 3703
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1000(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/LinearLayout;

    move-result-object v22

    const v23, 0x7f09013d

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 3714
    :cond_c
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->data:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 3716
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/detail/ContactDetailFragment;->access$400(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "font_size"

    const/16 v24, 0x2

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 3717
    .local v7, fontSize:I
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContactsForCG()Z

    move-result v22

    if-eqz v22, :cond_e

    const-string v22, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    const/16 v22, 0x4

    move/from16 v0, v22

    if-ne v7, v0, :cond_e

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_e

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x9

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_e

    .line 3723
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x9

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 3725
    .local v6, dataString:Ljava/lang/String;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->data:Landroid/widget/TextView;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ".."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 3727
    .end local v6           #dataString:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->data:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 3738
    .end local v7           #fontSize:I
    :cond_f
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->footer:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 3742
    :cond_10
    const/16 v22, 0x8

    goto/16 :goto_4

    .line 3743
    :cond_11
    const/16 v22, 0x8

    goto/16 :goto_5

    .line 3753
    .restart local v8       #presenceIcon:Landroid/graphics/drawable/Drawable;
    .restart local v9       #presenceIconView:Landroid/widget/ImageView;
    :cond_12
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 3779
    .restart local v3       #actionIcon:Landroid/graphics/drawable/Drawable;
    .restart local v4       #actionView:Landroid/widget/ImageView;
    .restart local v5       #actionsButtonContainer:Lcom/android/contacts/detail/ActionsViewContainer;
    .restart local v10       #primaryActionDescription:Ljava/lang/String;
    :cond_13
    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 3782
    :cond_14
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 3796
    .restart local v12       #secondaryActionDescription:Ljava/lang/String;
    .restart local v13       #secondaryActionIcon:Landroid/graphics/drawable/Drawable;
    .restart local v14       #secondaryActionView:Landroid/widget/ImageView;
    :cond_15
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->chatCapability:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x4

    if-eqz v22, :cond_16

    .line 3797
    const v22, 0x7f02056f

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 3799
    const v22, 0x7f0d018b

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_8

    .line 3800
    :cond_16
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->chatCapability:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x1

    if-eqz v22, :cond_3

    .line 3801
    const v22, 0x7f020508

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 3803
    const v22, 0x7f0d018a

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_8

    .line 3816
    .restart local v15       #secondaryActionViewContainer:Landroid/view/View;
    :cond_17
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3817
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->secondaryActionDivider:Landroid/view/View;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 3842
    .restart local v17       #thirdActionDescription:Ljava/lang/String;
    .restart local v18       #thirdActionIcon:Landroid/graphics/drawable/Drawable;
    .restart local v19       #thirdActionView:Landroid/widget/ImageView;
    .restart local v20       #thirdActionViewContainer:Landroid/view/View;
    :cond_18
    const/16 v22, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3843
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->thirdActionDivider:Landroid/view/View;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    .line 3876
    :cond_19
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->data:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 3877
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->connectionIcon:Lcom/sec/android/app/contacts/detail/ExpandableHeightGridView;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_b

    .line 3887
    :cond_1a
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_c

    .line 3890
    :cond_1b
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1d

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v23, v0

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;
    invoke-static/range {v23 .. v23}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2800(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    const-string v23, "rcs_free_text"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1d

    .line 3891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2800(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->setCurrentViewAndEntry(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)V

    .line 3892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2800(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->getIsRcs()Z

    move-result v22

    if-nez v22, :cond_1c

    .line 3893
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 3897
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mRcsActionBarPinner:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2800(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->updateFreeTextUI()V

    goto/16 :goto_d

    .line 3895
    :cond_1c
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f

    .line 3899
    :cond_1d
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 3900
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->rcsButtonRow:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_d

    .line 3924
    :cond_1e
    if-eqz p2, :cond_8

    .line 3925
    const v22, 0x7f09012b

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 3926
    .local v16, tempAutoSyncIndicator:Landroid/view/View;
    if-eqz v16, :cond_20

    .line 3927
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getVisibility()I

    move-result v22

    if-nez v22, :cond_1f

    .line 3928
    const-string v22, "ContactDetailFragment"

    const-string v23, "auto sync indicator was visible"

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 3930
    :cond_1f
    const/16 v22, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_e

    .line 3932
    :cond_20
    const-string v22, "ContactDetailFragment"

    const-string v23, "there is not auto sync indicator in this view"

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e
.end method

.method private getDetailEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 3645
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 3650
    .local v0, entry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    if-eqz p2, :cond_0

    .line 3651
    move-object v1, p2

    .line 3652
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    .line 3669
    .local v2, viewCache:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;
    :goto_0
    invoke-direct {p0, p1, v1, v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->bindDetailView(ILandroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)V

    .line 3670
    return-object v1

    .line 3655
    .end local v1           #v:Landroid/view/View;
    .end local v2           #viewCache:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04003e

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 3659
    .restart local v1       #v:Landroid/view/View;
    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mPrimaryActionClickListener:Landroid/view/View$OnClickListener;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mSecondaryActionClickListener:Landroid/view/View$OnClickListener;

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mThirdActionClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;-><init>(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 3662
    .restart local v2       #viewCache:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mFontSizeIsSet:Z
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2600(Lcom/android/contacts/detail/ContactDetailFragment;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3663
    iget-object v3, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->data:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$400(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f11004c

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 3666
    :cond_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getHeaderEntryView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 3479
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableIcon4SyncContact"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3480
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactHasSocialUpdates:Z
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2100(Lcom/android/contacts/detail/ContactDetailFragment;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v7, 0x7f040077

    .line 3488
    .local v7, desiredLayoutResourceId:I
    :goto_0
    const/4 v13, 0x0

    .line 3489
    .local v13, result:Landroid/view/View;
    const/4 v14, 0x0

    .line 3494
    .local v14, viewCache:Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
    if-eqz p1, :cond_0

    .line 3495
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    .end local v14           #viewCache:Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
    check-cast v14, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;

    .line 3496
    .restart local v14       #viewCache:Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
    iget v1, v14, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->layoutResourceId:I

    if-ne v1, v7, :cond_0

    .line 3497
    move-object/from16 v13, p1

    .line 3502
    :cond_0
    if-nez v13, :cond_1

    .line 3503
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v1, v7, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 3504
    new-instance v14, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;

    .end local v14           #viewCache:Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
    invoke-direct {v14, v13, v7}, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;-><init>(Landroid/view/View;I)V

    .line 3505
    .restart local v14       #viewCache:Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
    invoke-virtual {v13, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3508
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$400(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$300(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v2

    iget-object v3, v14, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->displayNameView:Landroid/widget/TextView;

    invoke-static {v1, v2, v3}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDisplayName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/TextView;)V

    .line 3510
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$400(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$300(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v2

    iget-object v3, v14, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->companyView:Landroid/widget/TextView;

    invoke-static {v1, v2, v3}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setCompanyName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/TextView;)V

    .line 3513
    iget-object v1, v14, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->photoView:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 3514
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$400(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3515
    iget-object v1, v14, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->photoView:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$1;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3549
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$400(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3550
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$2;

    invoke-direct {v2, p0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$2;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3567
    :cond_3
    iget-object v8, v14, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->starredView:Landroid/widget/CheckBox;

    .line 3568
    .local v8, favoritesStar:Landroid/widget/CheckBox;
    if-eqz v8, :cond_4

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$300(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 3570
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$300(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v2

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mStaticTwHeaderView:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1000(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    const v3, 0x7f09011d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-static {v2, v1, v8}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setStarred(Lcom/android/contacts/ContactLoader$Result;Landroid/widget/LinearLayout;Landroid/widget/CheckBox;)V

    .line 3571
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$300(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->getLookupUri()Landroid/net/Uri;

    move-result-object v11

    .line 3572
    .local v11, lookupUri:Landroid/net/Uri;
    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$3;

    invoke-direct {v1, p0, v11, v8}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$3;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;Landroid/net/Uri;Landroid/widget/CheckBox;)V

    invoke-virtual {v8, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3586
    .end local v11           #lookupUri:Landroid/net/Uri;
    :cond_4
    return-object v13

    .line 3480
    .end local v7           #desiredLayoutResourceId:I
    .end local v8           #favoritesStar:Landroid/widget/CheckBox;
    .end local v13           #result:Landroid/view/View;
    .end local v14           #viewCache:Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
    :cond_5
    const v7, 0x7f040079

    goto/16 :goto_0

    .line 3484
    :cond_6
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactHasSocialUpdates:Z
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2100(Lcom/android/contacts/detail/ContactDetailFragment;)Z

    move-result v1

    if-eqz v1, :cond_7

    const v7, 0x7f040077

    .restart local v7       #desiredLayoutResourceId:I
    :goto_2
    goto/16 :goto_0

    .end local v7           #desiredLayoutResourceId:I
    :cond_7
    const v7, 0x7f040078

    goto :goto_2

    .line 3534
    .restart local v7       #desiredLayoutResourceId:I
    .restart local v13       #result:Landroid/view/View;
    .restart local v14       #viewCache:Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
    :cond_8
    iget-object v1, v14, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->photoView:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$300(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3535
    iget-object v12, v14, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->photoView:Landroid/widget/ImageView;

    .line 3536
    .local v12, photoView:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoSetter:Lcom/android/contacts/detail/ContactDetailPhotoSetter;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2400(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$400(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$300(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v3

    iget-object v4, v14, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->photoView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoHandler:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;
    invoke-static {v6}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2300(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->getListener()Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->setupContactPhotoForClick(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/ImageView;ZLcom/android/contacts/editor/PhotoActionPopup$Listener;)Landroid/view/View$OnClickListener;

    move-result-object v10

    .line 3538
    .local v10, listener:Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$400(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isUsmMode(Landroid/content/Context;)Z

    move-result v9

    .line 3539
    .local v9, isUsmEnabled:Z
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoHandler:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2300(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getWritableEntityIndex()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_9

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$300(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v1

    if-nez v1, :cond_9

    if-nez v9, :cond_9

    .line 3540
    invoke-virtual {v14, v10}, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->enablePhotoOverlay(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 3542
    :cond_9
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->enablePhotoOverlay(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1
.end method

.method private getKindTitleEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 3603
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;

    .line 3606
    .local v0, entry:Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_EnableIcon4SyncContact"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3607
    if-eqz p2, :cond_0

    move-object v2, p2

    .line 3609
    .local v2, result:Landroid/view/View;
    :goto_0
    const v5, 0x7f090125

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 3610
    .local v1, nosyncIcon:Landroid/widget/ImageView;
    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;->getIsNoSync()Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3615
    .end local v1           #nosyncIcon:Landroid/widget/ImageView;
    :goto_2
    const v4, 0x7f0901a7

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 3616
    .local v3, titleTextView:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3618
    return-object v2

    .line 3607
    .end local v2           #result:Landroid/view/View;
    .end local v3           #titleTextView:Landroid/widget/TextView;
    :cond_0
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v5}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040120

    invoke-virtual {v5, v6, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 3610
    .restart local v1       #nosyncIcon:Landroid/widget/ImageView;
    .restart local v2       #result:Landroid/view/View;
    :cond_1
    const/16 v4, 0x8

    goto :goto_1

    .line 3612
    .end local v1           #nosyncIcon:Landroid/widget/ImageView;
    .end local v2           #result:Landroid/view/View;
    :cond_2
    if-eqz p2, :cond_3

    move-object v2, p2

    .restart local v2       #result:Landroid/view/View;
    :goto_3
    goto :goto_2

    .end local v2           #result:Landroid/view/View;
    :cond_3
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v5}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04011f

    invoke-virtual {v5, v6, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_3
.end method

.method private getNetworkTitleEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 3622
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;

    .line 3626
    .local v0, entry:Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;
    if-eqz p2, :cond_0

    .line 3627
    move-object v1, p2

    .line 3628
    .local v1, result:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;

    .line 3638
    .local v2, viewCache:Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;
    :goto_0
    iget-object v3, v2, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3639
    iget-object v3, v2, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3641
    return-object v1

    .line 3630
    .end local v1           #result:Landroid/view/View;
    .end local v2           #viewCache:Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040042

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 3632
    .restart local v1       #result:Landroid/view/View;
    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;

    invoke-direct {v2, v1}, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;-><init>(Landroid/view/View;)V

    .line 3633
    .restart local v2       #viewCache:Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3634
    const v3, 0x7f0900c8

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;->access$2500(Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private getSeparatorEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 3591
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 3599
    .local v0, result:Landroid/view/View;
    :goto_0
    return-object v0

    .line 3591
    .end local v0           #result:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040043

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private setMaxLines(Landroid/widget/TextView;I)V
    .locals 4
    .parameter "textView"
    .parameter "maxLines"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 3939
    const/4 v0, 0x0

    .line 3940
    .local v0, bottomPadding:I
    if-ne p2, v1, :cond_0

    .line 3941
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 3942
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 3950
    :goto_0
    invoke-virtual {p1, v3, v3, v3, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 3951
    return-void

    .line 3944
    :cond_0
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 3945
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 3946
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 3947
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 4058
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 4023
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3000(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    .locals 1
    .parameter "position"

    .prologue
    .line 4028
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3000(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3449
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4
    .parameter "position"

    .prologue
    const-wide/16 v1, -0x1

    .line 4044
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3000(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p1, v3, :cond_1

    .line 4052
    :cond_0
    :goto_0
    return-wide v1

    .line 4048
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3000(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    .line 4049
    .local v0, entry:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    if-eqz v0, :cond_0

    .line 4050
    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->getId()J

    move-result-wide v1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 4033
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3000(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->getViewType()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 3460
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3472
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid view type ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItemViewType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3462
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getHeaderEntryView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3470
    :goto_0
    return-object v0

    .line 3464
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getSeparatorEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 3466
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getKindTitleEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 3468
    :pswitch_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getDetailEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 3470
    :pswitch_4
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getNetworkTitleEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 3460
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 4038
    const/4 v0, 0x5

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 4063
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->isEnabled()Z

    move-result v0

    return v0
.end method
