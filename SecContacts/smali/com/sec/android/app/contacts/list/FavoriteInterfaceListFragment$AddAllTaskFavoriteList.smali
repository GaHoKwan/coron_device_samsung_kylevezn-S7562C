.class Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$AddAllTaskFavoriteList;
.super Landroid/os/AsyncTask;
.source "FavoriteInterfaceListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddAllTaskFavoriteList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 797
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$AddAllTaskFavoriteList;->this$0:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 797
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$AddAllTaskFavoriteList;-><init>(Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 802
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$AddAllTaskFavoriteList;->this$0:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->addFavoriteContactList()V

    .line 803
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 797
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$AddAllTaskFavoriteList;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 810
    #calls: Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->dismissProgressDialog()V
    invoke-static {}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->access$400()V

    .line 812
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$AddAllTaskFavoriteList;->this$0:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 816
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$AddAllTaskFavoriteList;->this$0:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    #calls: Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->announceItStopped()V
    invoke-static {v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->access$500(Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;)V

    .line 818
    :goto_0
    return-void

    .line 813
    :catch_0
    move-exception v0

    .line 816
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$AddAllTaskFavoriteList;->this$0:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    #calls: Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->announceItStopped()V
    invoke-static {v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->access$500(Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$AddAllTaskFavoriteList;->this$0:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    #calls: Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->announceItStopped()V
    invoke-static {v2}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->access$500(Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;)V

    throw v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 797
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$AddAllTaskFavoriteList;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 824
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$AddAllTaskFavoriteList;->this$0:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$AddAllTaskFavoriteList;->this$0:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0d0283

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->access$602(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 826
    return-void
.end method
