.class Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$1;
.super Ljava/lang/Object;
.source "GroupSelectionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$1;->this$0:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 276
    iget-object v5, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$1;->this$0:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    #calls: Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->getGoogleAccounts()Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->access$000(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)Ljava/util/ArrayList;

    move-result-object v3

    .line 278
    .local v3, googleAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 280
    .local v2, accountTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 286
    .local v1, accountNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "com.osp.app.signin"

    iget-object v6, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$1;->this$0:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    #getter for: Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAccountType:Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->access$100(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 287
    iget-object v5, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$1;->this$0:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    #getter for: Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAccountType:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->access$100(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v5, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$1;->this$0:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    #getter for: Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAccountName:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->access$200(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 304
    const-string v5, "vnd.sec.contact.phone"

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    const-string v5, "vnd.sec.contact.phone"

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$1;->this$0:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    #getter for: Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->access$300(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v2, v1, v6}, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 316
    return-void

    .line 289
    :cond_2
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 291
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 293
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 295
    .local v0, account:Landroid/accounts/Account;
    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method
