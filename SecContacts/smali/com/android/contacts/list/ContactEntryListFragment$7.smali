.class Lcom/android/contacts/list/ContactEntryListFragment$7;
.super Ljava/lang/Object;
.source "ContactEntryListFragment.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/ContactEntryListFragment;->updateSweepActionFeasibility()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactEntryListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactEntryListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1987
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment$7;,"Lcom/android/contacts/list/ContactEntryListFragment.7;"
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment$7;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListItemRestrictionApplied(I)Z
    .locals 3
    .parameter "itemIndex"

    .prologue
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment$7;,"Lcom/android/contacts/list/ContactEntryListFragment.7;"
    const/4 v1, 0x0

    .line 1990
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment$7;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    #getter for: Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    invoke-static {v2}, Lcom/android/contacts/list/ContactEntryListFragment;->access$100(Lcom/android/contacts/list/ContactEntryListFragment;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 1999
    :cond_0
    :goto_0
    return v1

    .line 1994
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment$7;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    #getter for: Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    invoke-static {v2}, Lcom/android/contacts/list/ContactEntryListFragment;->access$100(Lcom/android/contacts/list/ContactEntryListFragment;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v0, p1, v2

    .line 1995
    .local v0, adjPosition:I
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment$7;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v2, v2, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2, v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isGalSearchShowMore(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1999
    const/4 v1, 0x1

    goto :goto_0
.end method
