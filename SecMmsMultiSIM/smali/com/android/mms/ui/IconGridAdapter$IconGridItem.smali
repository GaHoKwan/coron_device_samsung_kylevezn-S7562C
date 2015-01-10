.class public Lcom/android/mms/ui/IconGridAdapter$IconGridItem;
.super Ljava/lang/Object;
.source "IconGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/IconGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconGridItem"
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
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p2, p0, Lcom/android/mms/ui/IconGridAdapter$IconGridItem;->mResource:Landroid/graphics/drawable/Drawable;

    .line 87
    iput-object p1, p0, Lcom/android/mms/ui/IconGridAdapter$IconGridItem;->mTitle:Ljava/lang/String;

    .line 88
    return-void
.end method


# virtual methods
.method public getResource()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/mms/ui/IconGridAdapter$IconGridItem;->mResource:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mms/ui/IconGridAdapter$IconGridItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method
