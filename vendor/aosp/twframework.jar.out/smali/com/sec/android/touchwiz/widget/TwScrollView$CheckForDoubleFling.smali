.class final Lcom/sec/android/touchwiz/widget/TwScrollView$CheckForDoubleFling;
.super Ljava/lang/Object;
.source "TwScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForDoubleFling"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 1301
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$CheckForDoubleFling;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView$CheckForDoubleFling;->this$0:Lcom/sec/android/touchwiz/widget/TwScrollView;

    const/16 v1, 0x64

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingMode:I

    .line 1307
    return-void
.end method
