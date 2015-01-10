.class Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SpeedDialListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/list/SpeedDialListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeedDialListAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1419
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1420
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1421
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1425
    const/16 v0, 0x64

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 1431
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1435
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x4

    const/16 v5, 0x8

    .line 1441
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    #getter for: Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsSelected:Z
    invoke-static {v1}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->access$500(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)Z

    move-result v1

    if-ne v1, v4, :cond_4

    .line 1442
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040168

    invoke-virtual {v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1443
    new-instance v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;-><init>()V

    .line 1444
    .local v0, holder:Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;
    const v1, 0x7f090326

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    .line 1445
    const v1, 0x7f090328

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mName:Landroid/widget/TextView;

    .line 1446
    const v1, 0x7f090330

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mDeleteButton:Landroid/view/View;

    .line 1447
    const v1, 0x7f090332

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mNumber:Landroid/widget/TextView;

    .line 1454
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1459
    :goto_0
    if-nez p1, :cond_5

    .line 1460
    iget-object v1, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    const v2, 0x7f0203c3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1461
    iget-object v1, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1462
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_1

    .line 1463
    iget-object v1, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1469
    :cond_1
    iget-object v1, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mNumber:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 1470
    iget-object v1, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mNumber:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1472
    :cond_2
    iget-object v1, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mName:Landroid/widget/TextView;

    const v2, 0x7f0d0098

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1474
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    #getter for: Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I
    invoke-static {v1}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->access$600(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1527
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    #getter for: Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I
    invoke-static {v1}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->access$600(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 1540
    :cond_3
    :goto_2
    return-object p2

    .line 1456
    .end local v0           #holder:Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;

    .restart local v0       #holder:Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;
    goto :goto_0

    .line 1476
    :pswitch_0
    iget-object v1, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1479
    :pswitch_1
    iget-object v1, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1482
    :pswitch_2
    iget-object v1, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1489
    :cond_5
    iget-object v1, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setId(I)V

    .line 1490
    iget-object v1, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_6

    .line 1491
    iget-object v1, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1493
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    #getter for: Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->access$000(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 1494
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    #getter for: Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->access$000(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p2, p1}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->setItemLayout(JLandroid/view/View;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 1497
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1513
    :cond_7
    :goto_3
    iget-object v1, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1518
    iget-object v1, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mNumber:Landroid/widget/TextView;

    if-eqz v1, :cond_8

    .line 1519
    iget-object v1, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mNumber:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1521
    :cond_8
    iget-object v1, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mName:Landroid/widget/TextView;

    const v2, 0x7f0d0351

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 1502
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    #getter for: Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I
    invoke-static {v1}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->access$600(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)I

    move-result v1

    if-ne v1, v4, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    #getter for: Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOldIndex:I
    invoke-static {v1}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->access$700(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)I

    move-result v1

    if-ne v1, p1, :cond_7

    .line 1503
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    #getter for: Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsSelected:Z
    invoke-static {v1}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->access$500(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1504
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    #setter for: Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangeOrderView:Landroid/view/View;
    invoke-static {v1, p2}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->access$802(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;Landroid/view/View;)Landroid/view/View;

    .line 1505
    const v1, 0x7f02070e

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1507
    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    #getter for: Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsSelected:Z
    invoke-static {v1}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->access$500(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1509
    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_3

    .line 1529
    :pswitch_3
    iget-object v1, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 1532
    :pswitch_4
    iget-object v1, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 1535
    :pswitch_5
    iget-object v1, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 1474
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1527
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
