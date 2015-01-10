.class Lcom/sec/android/app/contacts/activities/ContactCounterActivity$ContactCounterLoader;
.super Landroid/content/AsyncTaskLoader;
.source "ContactCounterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/ContactCounterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactCounterLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 94
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$ContactCounterLoader;->mContext:Landroid/content/Context;

    .line 95
    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$ContactCounterLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$ContactCounterLoader;->mContext:Landroid/content/Context;

    #calls: Lcom/sec/android/app/contacts/activities/ContactCounterActivity;->loadAccounts(Landroid/content/Context;)Ljava/util/List;
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/ContactCounterActivity;->access$100(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$ContactCounterLoader;->onStopLoading()V

    .line 115
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 104
    invoke-virtual {p0}, Landroid/content/Loader;->forceLoad()V

    .line 105
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 109
    invoke-virtual {p0}, Landroid/content/Loader;->cancelLoad()Z

    .line 110
    return-void
.end method
