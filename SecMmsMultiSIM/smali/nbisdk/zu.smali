.class public interface abstract Lnbisdk/zu;
.super Ljava/lang/Object;


# static fields
.field public static final FF:Ljava/lang/Boolean;

.field public static final FG:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lnbisdk/zu;->FF:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lnbisdk/zu;->FG:Ljava/lang/Boolean;

    return-void
.end method
