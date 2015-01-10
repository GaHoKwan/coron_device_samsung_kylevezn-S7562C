.class public Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;
.super Ljava/lang/Object;
.source "ContactListSweepActionListener.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/contacts/list/DefaultContactListAdapter;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;"
    }
.end annotation


# instance fields
.field final SWEEP_ACTION_PROJECTION:[Ljava/lang/String;

.field private isSuperPrimaryEmail:Z

.field private isSuperPrimaryPhone:Z

.field private mAdapter:Lcom/android/contacts/list/DefaultContactListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mContactId:I

.field private mContext:Landroid/content/Context;

.field private mEmailAddress:Ljava/lang/String;

.field private mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

.field private mPhoneNumber:Ljava/lang/String;

.field private mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;Lcom/android/contacts/list/DefaultContactListAdapter;)V
    .locals 3
    .parameter "context"
    .parameter "listView"
    .parameter "sweepActionBarCallBack"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/android/touchwiz/widget/TwSweepActionListView;",
            "Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;,"Lcom/sec/android/app/contacts/list/ContactListSweepActionListener<TT;>;"
    .local p4, adapter:Lcom/android/contacts/list/DefaultContactListAdapter;,"TT;"
    const/4 v2, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->isSuperPrimaryPhone:Z

    .line 78
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->isSuperPrimaryEmail:Z

    .line 80
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "is_super_primary"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->SWEEP_ACTION_PROJECTION:[Ljava/lang/String;

    .line 99
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mContext:Landroid/content/Context;

    .line 100
    iput-object p2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .line 101
    iput-object p3, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    .line 102
    iput-object p4, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mAdapter:Lcom/android/contacts/list/DefaultContactListAdapter;

    .line 103
    return-void
.end method


# virtual methods
.method public onSweepActionCanceled(I)V
    .locals 0
    .parameter "itemIndex"

    .prologue
    .line 108
    .local p0, this:Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;,"Lcom/sec/android/app/contacts/list/ContactListSweepActionListener<TT;>;"
    return-void
.end method

.method public onSweepActionFired(II)V
    .locals 11
    .parameter "itemIndex"
    .parameter "flickDirection"

    .prologue
    .local p0, this:Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;,"Lcom/sec/android/app/contacts/list/ContactListSweepActionListener<TT;>;"
    const/4 v10, 0x1

    .line 114
    if-nez p2, :cond_1

    .line 115
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->getHasPhoneNumber()Z

    move-result v5

    if-nez v5, :cond_2

    .line 116
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 117
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v5, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->getHasPhoneNumber()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->getHasEmailAddress()Z

    move-result v5

    if-nez v5, :cond_2

    .line 127
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 128
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v5, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0

    .line 144
    :cond_2
    if-nez p2, :cond_3

    .line 146
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getCallIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 148
    .local v0, callIntent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 151
    .end local v0           #callIntent:Landroid/content/Intent;
    :cond_3
    const/4 v1, 0x0

    .line 152
    .local v1, data:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->isSuperPrimaryPhone:Z

    if-eqz v5, :cond_5

    .line 153
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    .line 161
    :cond_4
    :goto_1
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.SENDTO"

    const-string v6, "smsto"

    const-string v7, ","

    const-string v8, "P"

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ";"

    const-string v9, "W"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 164
    .local v3, messageIntent:Landroid/content/Intent;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v4, rtnData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mContactId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    const-string v7, "P"

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ";"

    const-string v8, "W"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    const-string v5, "sendto"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 169
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 170
    :catch_0
    move-exception v2

    .line 171
    .local v2, ex:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 172
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 173
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v5, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    goto/16 :goto_0

    .line 154
    .end local v2           #ex:Landroid/content/ActivityNotFoundException;
    .end local v3           #messageIntent:Landroid/content/Intent;
    .end local v4           #rtnData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mEmailAddress:Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->isSuperPrimaryEmail:Z

    if-eqz v5, :cond_6

    .line 155
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mEmailAddress:Ljava/lang/String;

    goto :goto_1

    .line 156
    :cond_6
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 157
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    goto :goto_1

    .line 158
    :cond_7
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mEmailAddress:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 159
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mEmailAddress:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public onSweepActionStarted(I)V
    .locals 11
    .parameter "itemIndex"

    .prologue
    .line 184
    .local p0, this:Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;,"Lcom/sec/android/app/contacts/list/ContactListSweepActionListener<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mEmailAddress:Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mAdapter:Lcom/android/contacts/list/DefaultContactListAdapter;

    instance-of v0, v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v6, p1, v0

    .line 191
    .local v6, adjPosition:I
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mAdapter:Lcom/android/contacts/list/DefaultContactListAdapter;

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->isDefaultICE(I)Z

    move-result v9

    .line 193
    .local v9, isDefaultICE:Z
    if-eqz v9, :cond_2

    .line 194
    const-string v0, "ContactListSweepActionListener"

    const-string v2, "isDefaultICE"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mAdapter:Lcom/android/contacts/list/DefaultContactListAdapter;

    invoke-virtual {v0, v6}, Lcom/android/contacts/list/DefaultContactListAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->setHasPhoneNumber(Z)V

    .line 307
    .end local v6           #adjPosition:I
    .end local v9           #isDefaultICE:Z
    :cond_0
    :goto_0
    return-void

    .line 199
    .restart local v6       #adjPosition:I
    .restart local v9       #isDefaultICE:Z
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->setHasPhoneNumber(Z)V

    goto :goto_0

    .line 205
    .end local v6           #adjPosition:I
    .end local v9           #isDefaultICE:Z
    :cond_2
    const/4 v8, 0x0

    .line 206
    .local v8, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mAdapter:Lcom/android/contacts/list/DefaultContactListAdapter;

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/DefaultContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v7

    .line 207
    .local v7, baseUri:Landroid/net/Uri;
    if-eqz v7, :cond_3

    .line 208
    const-string v0, "entities"

    invoke-static {v7, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 217
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->SWEEP_ACTION_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 221
    .end local v1           #uri:Landroid/net/Uri;
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->isSuperPrimaryPhone:Z

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->isSuperPrimaryEmail:Z

    .line 224
    if-eqz v8, :cond_12

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_12

    .line 226
    const/4 v0, -0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->move(I)Z

    .line 227
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 229
    const-string v0, "vnd.android.cursor.item/phone_v2"

    const/4 v2, 0x3

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "vnd.android.cursor.item/email_v2"

    const/4 v2, 0x3

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 235
    :cond_5
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 236
    .local v10, isSuperPrimary:I
    if-lez v10, :cond_4

    .line 237
    const-string v0, "vnd.android.cursor.item/email_v2"

    const/4 v2, 0x3

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 238
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mEmailAddress:Ljava/lang/String;

    .line 239
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mContactId:I

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->isSuperPrimaryEmail:Z

    .line 243
    :cond_6
    const-string v0, "vnd.android.cursor.item/phone_v2"

    const/4 v2, 0x3

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 244
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    .line 245
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mContactId:I

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->isSuperPrimaryPhone:Z

    .line 249
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mEmailAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 259
    .end local v10           #isSuperPrimary:I
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 260
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 262
    :cond_9
    const-string v0, "vnd.android.cursor.item/phone_v2"

    const/4 v2, 0x3

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 264
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    .line 265
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mContactId:I

    .line 271
    :cond_a
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mEmailAddress:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 272
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 274
    :cond_b
    const-string v0, "vnd.android.cursor.item/email_v2"

    const/4 v2, 0x3

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 276
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mEmailAddress:Ljava/lang/String;

    .line 277
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mContactId:I

    .line 283
    :cond_c
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->setHasPhoneNumber(Z)V

    .line 285
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->setHasEmailAddress(Z)V

    .line 294
    :goto_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Message_DisableMMS"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 295
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->setHasEmailAddress(Z)V

    .line 298
    :cond_d
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 304
    :goto_4
    if-eqz v8, :cond_0

    .line 305
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 268
    :cond_e
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1

    .line 280
    :cond_f
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_2

    .line 286
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mEmailAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 287
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->setHasPhoneNumber(Z)V

    .line 288
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->setHasEmailAddress(Z)V

    goto :goto_3

    .line 290
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->setHasPhoneNumber(Z)V

    .line 291
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->setHasEmailAddress(Z)V

    goto :goto_3

    .line 300
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->setHasPhoneNumber(Z)V

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->setHasEmailAddress(Z)V

    goto :goto_4
.end method
