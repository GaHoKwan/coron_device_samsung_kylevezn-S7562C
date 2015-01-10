.class Lcom/android/contacts/detail/ContactLoaderFragment$2;
.super Ljava/lang/Object;
.source "ContactLoaderFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactLoaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/contacts/ContactLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactLoaderFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactLoaderFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment$2;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/ContactLoader$Result;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 364
    const-string v0, "contactUri"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 365
    .local v2, lookupUri:Landroid/net/Uri;
    new-instance v0, Lcom/android/contacts/ContactLoader;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment$2;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    #getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$200(Lcom/android/contacts/detail/ContactLoaderFragment;)Landroid/content/Context;

    move-result-object v1

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;ZZZZ)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/ContactLoader$Result;)V
    .locals 3
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/ContactLoader$Result;",
            ">;",
            "Lcom/android/contacts/ContactLoader$Result;",
            ")V"
        }
    .end annotation

    .prologue
    .line 372
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/contacts/ContactLoader$Result;>;"
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$2;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    #getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$300(Lcom/android/contacts/detail/ContactLoaderFragment;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$2;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    #getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$300(Lcom/android/contacts/detail/ContactLoaderFragment;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/contacts/ContactLoader$Result;->getRequestedUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$2;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    #getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$300(Lcom/android/contacts/detail/ContactLoaderFragment;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/contacts/ContactLoader$Result;->getLookupUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 374
    invoke-static {}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Different URI: requested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment$2;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    #getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$300(Lcom/android/contacts/detail/ContactLoaderFragment;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  actual="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    .end local p1           #loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/contacts/ContactLoader$Result;>;"
    :cond_0
    :goto_0
    return-void

    .line 378
    .restart local p1       #loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/contacts/ContactLoader$Result;>;"
    :cond_1
    invoke-virtual {p2}, Lcom/android/contacts/ContactLoader$Result;->isError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 381
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to load contact"

    invoke-virtual {p2}, Lcom/android/contacts/ContactLoader$Result;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 382
    :cond_2
    invoke-virtual {p2}, Lcom/android/contacts/ContactLoader$Result;->isNotFound()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 383
    invoke-static {}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No contact found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p1, Lcom/android/contacts/ContactLoader;

    .end local p1           #loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/contacts/ContactLoader$Result;>;"
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader;->getLookupUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$2;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    const/4 v1, 0x0

    #setter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$102(Lcom/android/contacts/detail/ContactLoaderFragment;Lcom/android/contacts/ContactLoader$Result;)Lcom/android/contacts/ContactLoader$Result;

    .line 391
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$2;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    #getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$000(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 392
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$2;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    #getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$100(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v0

    if-nez v0, :cond_6

    .line 393
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$2;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    #getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$000(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;->onContactNotFound()V

    .line 398
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$2;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    #getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mFavoriteListener:Lcom/android/contacts/detail/ContactLoaderFragment$FavoriteLoaderFragmentListener;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$500(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/detail/ContactLoaderFragment$FavoriteLoaderFragmentListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 399
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$2;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    #getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$100(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v0

    if-nez v0, :cond_7

    .line 400
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$2;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    #getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mFavoriteListener:Lcom/android/contacts/detail/ContactLoaderFragment$FavoriteLoaderFragmentListener;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$500(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/detail/ContactLoaderFragment$FavoriteLoaderFragmentListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/contacts/detail/ContactLoaderFragment$FavoriteLoaderFragmentListener;->onContactNotFound()V

    .line 407
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$2;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    #calls: Lcom/android/contacts/detail/ContactLoaderFragment;->setContactInfos()V
    invoke-static {v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$600(Lcom/android/contacts/detail/ContactLoaderFragment;)V

    .line 410
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$2;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$2;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_0

    .line 386
    .restart local p1       #loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/contacts/ContactLoader$Result;>;"
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$2;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    #setter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v0, p2}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$102(Lcom/android/contacts/detail/ContactLoaderFragment;Lcom/android/contacts/ContactLoader$Result;)Lcom/android/contacts/ContactLoader$Result;

    .line 388
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$2;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment$2;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    #getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$100(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->getLookupUri()Landroid/net/Uri;

    move-result-object v1

    #setter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$302(Lcom/android/contacts/detail/ContactLoaderFragment;Landroid/net/Uri;)Landroid/net/Uri;

    goto :goto_1

    .line 395
    .end local p1           #loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/contacts/ContactLoader$Result;>;"
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$2;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    #getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$000(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment$2;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    #getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$100(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;->onDetailsLoaded(Lcom/android/contacts/ContactLoader$Result;)V

    goto :goto_2

    .line 402
    :cond_7
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$2;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    #getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mFavoriteListener:Lcom/android/contacts/detail/ContactLoaderFragment$FavoriteLoaderFragmentListener;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$500(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/detail/ContactLoaderFragment$FavoriteLoaderFragmentListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment$2;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    #getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$100(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment$FavoriteLoaderFragmentListener;->onDetailsLoaded(Lcom/android/contacts/ContactLoader$Result;)V

    goto :goto_3
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 361
    check-cast p2, Lcom/android/contacts/ContactLoader$Result;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/detail/ContactLoaderFragment$2;->onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/ContactLoader$Result;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/ContactLoader$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 416
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/contacts/ContactLoader$Result;>;"
    return-void
.end method
