.class Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$MemberQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "GroupMemberPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MemberQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 621
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$MemberQueryHandler;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    .line 622
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 623
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "data"

    .prologue
    .line 636
    const/16 v1, 0x12

    if-ne p1, v1, :cond_0

    .line 637
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$MemberQueryHandler;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    #setter for: Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mICEGroupCount:I
    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->access$1102(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;I)I

    .line 654
    :goto_0
    return-void

    .line 639
    :cond_0
    const/4 v1, -0x1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 640
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 641
    .local v0, originalMemberIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 642
    const/4 v1, 0x0

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 645
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$MemberQueryHandler;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->setOriginalMemeberIds(Ljava/util/List;)V

    .line 647
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$MemberQueryHandler;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    #getter for: Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->access$1200(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 648
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$MemberQueryHandler;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    #getter for: Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->access$1200(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 649
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$MemberQueryHandler;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mCursor:Landroid/database/Cursor;
    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->access$1202(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 651
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$MemberQueryHandler;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    #setter for: Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mCursor:Landroid/database/Cursor;
    invoke-static {v1, p3}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->access$1202(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 652
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$MemberQueryHandler;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    sget-object v2, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;->LOADED:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;

    #setter for: Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mStatus:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;
    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->access$1002(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;)Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;

    goto :goto_0
.end method

.method public runQuery()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 627
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$MemberQueryHandler;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$MemberQueryHandler;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    #getter for: Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mMode:I
    invoke-static {v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->access$800(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;)I

    move-result v1

    #calls: Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->configureUri(I)Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->access$900(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;I)Landroid/net/Uri;

    move-result-object v2

    .line 628
    .local v2, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$MemberQueryHandler;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    #getter for: Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mMode:I
    invoke-static {v0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->access$800(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;)I

    move-result v1

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v0

    move-object v0, p0

    move-object v3, v2

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$MemberQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$MemberQueryHandler;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    sget-object v1, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;->LOAING:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;

    #setter for: Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->mStatus:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->access$1002(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;)Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;

    .line 632
    return-void
.end method
