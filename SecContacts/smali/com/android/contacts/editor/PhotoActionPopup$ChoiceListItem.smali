.class final Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;
.super Ljava/lang/Object;
.source "PhotoActionPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/PhotoActionPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ChoiceListItem"
.end annotation


# instance fields
.field private final mCaption:Ljava/lang/String;

.field private final mId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "caption"

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput p1, p0, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;->mId:I

    .line 229
    iput-object p2, p0, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;->mCaption:Ljava/lang/String;

    .line 230
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;->mId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;->mCaption:Ljava/lang/String;

    return-object v0
.end method
