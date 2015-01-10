.class final Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;
.super Ljava/lang/Object;
.source "GroupChangeOrderListFragment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GroupListItem"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public order:I

.field public systemId:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 275
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem$1;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "title"
    .parameter "systemId"
    .parameter "order"

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;->title:Ljava/lang/String;

    .line 259
    iput-object p2, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;->systemId:Ljava/lang/String;

    .line 260
    iput p3, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;->order:I

    .line 261
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;->systemId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 272
    iget v0, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;->order:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    return-void
.end method
