.class final Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;
.super Ljava/lang/Object;
.source "JoinedContactFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LinkedContactItemCache"
.end annotation


# instance fields
.field public accountBuffer:Landroid/database/CharArrayBuffer;

.field public accountView:Landroid/widget/TextView;

.field public mJoinedContactItem:Landroid/widget/LinearLayout;

.field public minusButtonFrame:Landroid/widget/FrameLayout;

.field public minusButtonView:Landroid/widget/ImageView;

.field public nameBuffer:Landroid/database/CharArrayBuffer;

.field public nameView:Landroid/widget/TextView;

.field public photoView:Landroid/widget/ImageView;

.field public profileIntent:Landroid/content/Intent;

.field public targetRawContactId:J

.field final synthetic this$1:Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;)V
    .locals 2
    .parameter

    .prologue
    const/16 v1, 0x80

    .line 236
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->this$1:Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    new-instance v0, Landroid/database/CharArrayBuffer;

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->accountBuffer:Landroid/database/CharArrayBuffer;

    .line 240
    new-instance v0, Landroid/database/CharArrayBuffer;

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->nameBuffer:Landroid/database/CharArrayBuffer;

    return-void
.end method
