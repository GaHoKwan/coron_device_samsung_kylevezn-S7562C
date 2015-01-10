.class Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;
.super Ljava/lang/Object;
.source "SetDefaultActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SetDefaultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 534
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 538
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    invoke-virtual {v5}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v5

    if-eqz v5, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_1

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    invoke-virtual {v5}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 543
    .local v2, position:I
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;
    invoke-static {v5}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$000(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    .line 544
    .local v4, selectedEntry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    const/4 v3, 0x0

    .line 548
    .local v3, prevEntry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    .line 549
    .local v0, entry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;
    instance-of v5, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    if-eqz v5, :cond_2

    move-object v5, v0

    .line 550
    check-cast v5, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    iget v5, v5, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->which:I

    iget v6, v4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->which:I

    if-ne v5, v6, :cond_2

    .line 551
    check-cast v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    .end local v0           #entry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;
    iput-boolean v7, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    goto :goto_1

    .line 555
    :cond_3
    iget v5, v4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->which:I

    packed-switch v5, :pswitch_data_0

    .line 600
    :goto_2
    if-eqz v3, :cond_e

    .line 601
    iput-boolean v7, v3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    .line 602
    iput-boolean v8, v4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    .line 603
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;
    invoke-static {v5}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$000(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 609
    :cond_4
    :goto_3
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mMenuDone:Landroid/view/MenuItem;
    invoke-static {v5}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1800(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 610
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoChanged:Z
    invoke-static {v5}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$400(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNameChanged:Z
    invoke-static {v5}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$800(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNumberChanged:Z
    invoke-static {v5}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1200(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsEmailChanged:Z
    invoke-static {v5}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1600(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 611
    :cond_5
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mMenuDone:Landroid/view/MenuItem;
    invoke-static {v5}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1800(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 557
    :pswitch_0
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I
    invoke-static {v5}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$200(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I

    move-result v5

    if-eq v5, v9, :cond_6

    .line 558
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;
    invoke-static {v5}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$000(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$200(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v3

    .end local v3           #prevEntry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    check-cast v3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    .line 559
    .restart local v3       #prevEntry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    :cond_6
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedPhotoIndex:I
    invoke-static {v5}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$300(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I

    move-result v5

    if-eq v5, v2, :cond_7

    .line 560
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoChanged:Z
    invoke-static {v5, v8}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$402(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z

    .line 563
    :goto_4
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I
    invoke-static {v5, v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$202(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I

    .line 564
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstPhoto:Z
    invoke-static {v5, v7}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$502(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z

    goto :goto_2

    .line 562
    :cond_7
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoChanged:Z
    invoke-static {v5, v7}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$402(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z

    goto :goto_4

    .line 567
    :pswitch_1
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I
    invoke-static {v5}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$600(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I

    move-result v5

    if-eq v5, v9, :cond_8

    .line 568
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;
    invoke-static {v5}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$000(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$600(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v3

    .end local v3           #prevEntry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    check-cast v3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    .line 569
    .restart local v3       #prevEntry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    :cond_8
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedNameIndex:I
    invoke-static {v5}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$700(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I

    move-result v5

    if-eq v5, v2, :cond_9

    .line 570
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNameChanged:Z
    invoke-static {v5, v8}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$802(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z

    .line 573
    :goto_5
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I
    invoke-static {v5, v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$602(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I

    .line 574
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstName:Z
    invoke-static {v5, v7}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$902(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z

    goto/16 :goto_2

    .line 572
    :cond_9
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNameChanged:Z
    invoke-static {v5, v7}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$802(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z

    goto :goto_5

    .line 577
    :pswitch_2
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I
    invoke-static {v5}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1000(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I

    move-result v5

    if-eq v5, v9, :cond_a

    .line 578
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;
    invoke-static {v5}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$000(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1000(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v3

    .end local v3           #prevEntry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    check-cast v3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    .line 579
    .restart local v3       #prevEntry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    :cond_a
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedNumberIndex:I
    invoke-static {v5}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I

    move-result v5

    if-eq v5, v2, :cond_b

    .line 580
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNumberChanged:Z
    invoke-static {v5, v8}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1202(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z

    .line 583
    :goto_6
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I
    invoke-static {v5, v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1002(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I

    .line 584
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstNumber:Z
    invoke-static {v5, v7}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1302(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z

    goto/16 :goto_2

    .line 582
    :cond_b
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNumberChanged:Z
    invoke-static {v5, v7}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1202(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z

    goto :goto_6

    .line 587
    :pswitch_3
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I
    invoke-static {v5}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1400(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I

    move-result v5

    if-eq v5, v9, :cond_c

    .line 588
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;
    invoke-static {v5}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$000(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1400(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v3

    .end local v3           #prevEntry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    check-cast v3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    .line 589
    .restart local v3       #prevEntry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    :cond_c
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedEmailIndex:I
    invoke-static {v5}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1500(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I

    move-result v5

    if-eq v5, v2, :cond_d

    .line 590
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsEmailChanged:Z
    invoke-static {v5, v8}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1602(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z

    .line 593
    :goto_7
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I
    invoke-static {v5, v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1402(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I

    .line 594
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstEmail:Z
    invoke-static {v5, v7}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1702(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z

    goto/16 :goto_2

    .line 592
    :cond_d
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsEmailChanged:Z
    invoke-static {v5, v7}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1602(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z

    goto :goto_7

    .line 604
    :cond_e
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoChanged:Z
    invoke-static {v5}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$400(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z

    move-result v5

    if-nez v5, :cond_f

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNameChanged:Z
    invoke-static {v5}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$800(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z

    move-result v5

    if-nez v5, :cond_f

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNumberChanged:Z
    invoke-static {v5}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1200(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z

    move-result v5

    if-nez v5, :cond_f

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsEmailChanged:Z
    invoke-static {v5}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1600(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 605
    :cond_f
    iput-boolean v8, v4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    .line 606
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;
    invoke-static {v5}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$000(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_3

    .line 613
    :cond_10
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mMenuDone:Landroid/view/MenuItem;
    invoke-static {v5}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1800(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 555
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
