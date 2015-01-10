.class final Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem$1;
.super Ljava/lang/Object;
.source "GroupChangeOrderListFragment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;
    .locals 4
    .parameter "source"

    .prologue
    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, title:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, systemId:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 282
    .local v0, order:I
    new-instance v3, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;

    invoke-direct {v3, v2, v1, v0}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 275
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;
    .locals 1
    .parameter "size"

    .prologue
    .line 287
    new-array v0, p1, [Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 275
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem$1;->newArray(I)[Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;

    move-result-object v0

    return-object v0
.end method
