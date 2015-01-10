.class Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity$DoubleTapTutorialAdapter;
.super Landroid/widget/BaseAdapter;
.source "TiltToScrollListTutorialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoubleTapTutorialAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 562
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity$DoubleTapTutorialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;

    .line 564
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 568
    iput-object p2, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity$DoubleTapTutorialAdapter;->mContext:Landroid/content/Context;

    .line 570
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity$DoubleTapTutorialAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity$DoubleTapTutorialAdapter;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 572
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 578
    const/16 v0, 0x14

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 586
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 594
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 602
    move-object v7, p2

    check-cast v7, Lcom/android/contacts/list/ContactListItemView;

    .line 606
    .local v7, view:Lcom/android/contacts/list/ContactListItemView;
    if-nez v7, :cond_0

    .line 608
    new-instance v7, Lcom/android/contacts/list/ContactListItemView;

    .end local v7           #view:Lcom/android/contacts/list/ContactListItemView;
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity$DoubleTapTutorialAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {v7, v0, v1}, Lcom/android/contacts/list/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 614
    .restart local v7       #view:Lcom/android/contacts/list/ContactListItemView;
    :cond_0
    invoke-virtual {v7}, Lcom/android/contacts/list/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity$DoubleTapTutorialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;

    const v3, 0x7f0d0017

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity$DoubleTapTutorialAdapter;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v7}, Lcom/android/contacts/list/ContactListItemView;->getQuickContact()Landroid/widget/QuickContactBadge;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    int-to-long v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZJ)V

    .line 620
    return-object v7
.end method
