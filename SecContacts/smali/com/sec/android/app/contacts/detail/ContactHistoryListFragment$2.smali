.class Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$2;
.super Ljava/lang/Object;
.source "ContactHistoryListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->addDeleteAllHeaderView(Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$2;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 325
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$2;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    #getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$600(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    .line 326
    .local v0, checked:Z
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$2;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    #getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$600(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v4

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 327
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$2;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->setAllItemChecked(Z)V

    .line 328
    return-void

    :cond_0
    move v1, v3

    .line 326
    goto :goto_0

    :cond_1
    move v2, v3

    .line 327
    goto :goto_1
.end method
