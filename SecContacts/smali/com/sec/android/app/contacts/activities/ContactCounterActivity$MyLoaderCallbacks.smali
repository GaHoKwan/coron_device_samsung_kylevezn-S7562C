.class Lcom/sec/android/app/contacts/activities/ContactCounterActivity$MyLoaderCallbacks;
.super Ljava/lang/Object;
.source "ContactCounterActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/ContactCounterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLoaderCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/ContactCounterActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/activities/ContactCounterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$MyLoaderCallbacks;->this$0:Lcom/sec/android/app/contacts/activities/ContactCounterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/activities/ContactCounterActivity;Lcom/sec/android/app/contacts/activities/ContactCounterActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 278
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$MyLoaderCallbacks;-><init>(Lcom/sec/android/app/contacts/activities/ContactCounterActivity;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 281
    new-instance v0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$ContactCounterLoader;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$MyLoaderCallbacks;->this$0:Lcom/sec/android/app/contacts/activities/ContactCounterActivity;

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$ContactCounterLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 278
    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$MyLoaderCallbacks;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Ljava/util/List<Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;>;>;"
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;>;"
    if-nez p2, :cond_0

    .line 288
    const-string v0, "ContactCounterActivity"

    const-string v1, "Failed to load filters"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$MyLoaderCallbacks;->this$0:Lcom/sec/android/app/contacts/activities/ContactCounterActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/ContactCounterActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/ContactCounterActivity;->access$200(Lcom/sec/android/app/contacts/activities/ContactCounterActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$ContactCounterAdapter;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$MyLoaderCallbacks;->this$0:Lcom/sec/android/app/contacts/activities/ContactCounterActivity;

    invoke-direct {v1, v2, p2}, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$ContactCounterAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 296
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Ljava/util/List<Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;>;>;"
    return-void
.end method
