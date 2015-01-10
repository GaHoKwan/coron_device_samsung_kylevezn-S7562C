.class final Lnbisdk/yv;
.super Ljava/lang/Object;


# instance fields
.field protected ax:Ljava/lang/String;

.field protected bp:J

.field protected br:Ljava/util/Vector;


# direct methods
.method constructor <init>(JLjava/lang/String;Ljava/util/Vector;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lnbisdk/yv;->bp:J

    iput-object p3, p0, Lnbisdk/yv;->ax:Ljava/lang/String;

    iput-object p4, p0, Lnbisdk/yv;->br:Ljava/util/Vector;

    iget-object v0, p0, Lnbisdk/yv;->br:Ljava/util/Vector;

    invoke-static {v0}, Lnbisdk/iz;->a(Ljava/util/Vector;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/Vector;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static y(Lnbisdk/ql;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnbisdk/ql;->ir()Ljava/util/Enumeration;

    move-result-object v1

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lnbisdk/iz;->a(Ljava/util/Vector;)V

    invoke-static {v0, v2}, Lnbisdk/yv;->a(Ljava/lang/String;Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final ak()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnbisdk/yv;->ax:Ljava/lang/String;

    iget-object v1, p0, Lnbisdk/yv;->br:Ljava/util/Vector;

    invoke-static {v0, v1}, Lnbisdk/yv;->a(Ljava/lang/String;Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
