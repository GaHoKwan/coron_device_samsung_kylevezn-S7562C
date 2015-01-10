.class Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter$1;
.super Landroid/database/ContentObserver;
.source "FavoriteInterfaceListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 329
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter$1;->this$0:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter$1;->this$0:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mIsFavChangedInBg:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->access$002(Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;Z)Z

    .line 332
    return-void
.end method
