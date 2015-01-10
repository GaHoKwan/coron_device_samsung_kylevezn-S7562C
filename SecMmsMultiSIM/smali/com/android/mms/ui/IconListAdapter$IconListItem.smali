.class public Lcom/android/mms/ui/IconListAdapter$IconListItem;
.super Ljava/lang/Object;
.source "IconListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/IconListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconListItem"
.end annotation


# instance fields
.field private final mResource:Landroid/graphics/drawable/Drawable;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "title"
    .parameter "resource"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p2, p0, Lcom/android/mms/ui/IconListAdapter$IconListItem;->mResource:Landroid/graphics/drawable/Drawable;

    .line 84
    iput-object p1, p0, Lcom/android/mms/ui/IconListAdapter$IconListItem;->mTitle:Ljava/lang/String;

    .line 85
    return-void
.end method


# virtual methods
.method public getResource()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/mms/ui/IconListAdapter$IconListItem;->mResource:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/IconListAdapter$IconListItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method
