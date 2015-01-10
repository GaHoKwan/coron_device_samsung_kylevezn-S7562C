.class Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$3;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 507
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$3;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 11
    .parameter "view"

    .prologue
    .line 511
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$3;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$100(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 512
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;

    .line 513
    .local v2, mDetailInfo:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$3;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v9}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$400(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->selectDetail(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;)V

    .line 514
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$302(Z)Z

    .line 516
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$600()Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 517
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$600()Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0900d4

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 518
    .local v6, prevTvName:Landroid/widget/TextView;
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$3;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$100(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b010c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 519
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 520
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$600()Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0900d2

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 521
    .local v5, prevTvGroupCount:Landroid/widget/TextView;
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$3;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$100(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b010c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 522
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 524
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$600()Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0900db

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 525
    .local v3, prevIvArrow:Landroid/widget/ImageView;
    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 526
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$600()Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0900dc

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 527
    .local v4, prevIvArrowSplit:Landroid/widget/ImageView;
    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 530
    .end local v3           #prevIvArrow:Landroid/widget/ImageView;
    .end local v4           #prevIvArrowSplit:Landroid/widget/ImageView;
    .end local v5           #prevTvGroupCount:Landroid/widget/TextView;
    .end local v6           #prevTvName:Landroid/widget/TextView;
    :cond_0
    const v9, 0x7f0900d4

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 531
    .local v8, tvName:Landroid/widget/TextView;
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$3;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$100(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b00e7

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 532
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 533
    const v9, 0x7f0900d2

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 534
    .local v7, tvGroupCount:Landroid/widget/TextView;
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$3;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$100(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b00e7

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 535
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v7, v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 537
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$3;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->isSplitStatus:Z
    invoke-static {v9}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$700(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 538
    const v9, 0x7f0900db

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 539
    .local v0, ivArrow:Landroid/widget/ImageView;
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 540
    const v9, 0x7f0900dc

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 541
    .local v1, ivArrowSplit:Landroid/widget/ImageView;
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 549
    :goto_0
    invoke-static {p1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$602(Landroid/view/View;)Landroid/view/View;

    .line 550
    iget v9, v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;->pos:I

    invoke-static {v9}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$202(I)I

    .line 551
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$3;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v9}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$400(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->openForList(Landroid/view/View;)V

    .line 554
    .end local v0           #ivArrow:Landroid/widget/ImageView;
    .end local v1           #ivArrowSplit:Landroid/widget/ImageView;
    .end local v2           #mDetailInfo:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;
    .end local v7           #tvGroupCount:Landroid/widget/TextView;
    .end local v8           #tvName:Landroid/widget/TextView;
    :cond_1
    const/4 v9, 0x1

    return v9

    .line 543
    .restart local v2       #mDetailInfo:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;
    .restart local v7       #tvGroupCount:Landroid/widget/TextView;
    .restart local v8       #tvName:Landroid/widget/TextView;
    :cond_2
    const v9, 0x7f0900db

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 544
    .restart local v0       #ivArrow:Landroid/widget/ImageView;
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 545
    const v9, 0x7f0900dc

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 546
    .restart local v1       #ivArrowSplit:Landroid/widget/ImageView;
    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
