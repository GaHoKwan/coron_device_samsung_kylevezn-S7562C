.class public Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;
.super Ljava/lang/Object;
.source "DialpadListSweepActionListener.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;"
    }
.end annotation


# instance fields
.field PROJECTION_PHOTOID_FOR_FAVORITE:[Ljava/lang/String;

.field private mAdapter:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mListView:Lcom/sec/android/touchwiz/widget/TwListView;

.field private mPhoneNumber:Ljava/lang/String;

.field private mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwListView;Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;)V
    .locals 3
    .parameter "context"
    .parameter "listView"
    .parameter "sweepActionBarCallBack"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/android/touchwiz/widget/TwListView;",
            "Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, this:Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;,"Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener<TT;>;"
    .local p4, adapter:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "is_super_primary"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->PROJECTION_PHOTOID_FOR_FAVORITE:[Ljava/lang/String;

    .line 79
    iput-object p1, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    .line 81
    iput-object p3, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;

    .line 82
    iput-object p4, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mAdapter:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;

    .line 83
    return-void
.end method

.method private getFavoriteNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "id"

    .prologue
    .line 203
    .local p0, this:Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;,"Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener<TT;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/contacts/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 204
    .local v1, URI_PHONE:Landroid/net/Uri;
    const-string v5, "is_super_primary DESC "

    .line 205
    .local v5, orderBy:Ljava/lang/String;
    const/4 v8, 0x0

    .line 207
    .local v8, number:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 210
    .local v0, providerClient:Landroid/content/ContentProviderClient;
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->PROJECTION_PHOTOID_FOR_FAVORITE:[Ljava/lang/String;

    const-string v3, "mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 216
    .local v6, cur_phone:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    const-string v2, "data1"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 219
    :cond_0
    if-eqz v6, :cond_1

    .line 220
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v6           #cur_phone:Landroid/database/Cursor;
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 225
    return-object v8

    .line 221
    :catch_0
    move-exception v7

    .line 222
    .local v7, e:Landroid/os/RemoteException;
    const-string v2, "DialpadListSweepActionListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processFavorites providerClient has exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onSweepActionCanceled(I)V
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 87
    .local p0, this:Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;,"Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener<TT;>;"
    const-string v0, "DialpadListSweepActionListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSweepActionCanceled() / itemIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method

.method public onSweepActionFired(II)V
    .locals 7
    .parameter "itemIndex"
    .parameter "flickDirection"

    .prologue
    .local p0, this:Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;,"Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener<TT;>;"
    const/4 v6, 0x1

    .line 92
    const-string v3, "DialpadListSweepActionListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSweepActionFired() / itemIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", flickDirection = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v2, 0x0

    .line 95
    .local v2, str:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, p1, v4

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 99
    .local v1, listItem:Landroid/view/View;
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->getHasPhoneNumber()Z

    move-result v3

    if-nez v3, :cond_1

    .line 100
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v3, v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    if-nez p2, :cond_2

    .line 116
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_2
    if-ne v6, p2, :cond_4

    .line 119
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeSms(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 122
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v3, v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    .line 124
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0125

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 125
    const-string v3, "DialpadListSweepActionListener"

    const-string v4, "No activity found for intent"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 128
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v3, v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0
.end method

.method public onSweepActionStarted(I)V
    .locals 7
    .parameter "itemIndex"

    .prologue
    .local p0, this:Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;,"Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener<TT;>;"
    const/4 v6, 0x1

    .line 157
    const-string v3, "DialpadListSweepActionListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSweepActionStarted() / itemIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, p1, v4

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 161
    .local v0, listItem:Landroid/view/View;
    const/4 v2, 0x0

    .line 162
    .local v2, tv:Landroid/widget/TextView;
    const v3, 0x7f0901d8

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #tv:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 164
    .restart local v2       #tv:Landroid/widget/TextView;
    const/4 v1, 0x0

    .line 165
    .local v1, ll:Landroid/widget/LinearLayout;
    const v3, 0x7f0901d0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #ll:Landroid/widget/LinearLayout;
    check-cast v1, Landroid/widget/LinearLayout;

    .line 167
    .restart local v1       #ll:Landroid/widget/LinearLayout;
    const-string v4, "4"

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->setHasPhoneNumber(Z)V

    .line 169
    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->getFavoriteNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    .line 195
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    .line 174
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0099

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d009a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d009b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d03da

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d03db

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d03dc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d03de

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    const-string v4, "-1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    const-string v4, "-2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    const-string v4, "-3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    const-string v4, "-4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    const-string v4, "NTT DOCOMO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    const-string v4, "P"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 190
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->setHasPhoneNumber(Z)V

    goto/16 :goto_0

    .line 192
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/dialertab/widget/DialpadListSweepActionHandler;->setHasPhoneNumber(Z)V

    goto/16 :goto_0
.end method
