DO $$
DECLARE
    order_cursor CURSOR FOR
        SELECT OrderID, Amount
        FROM Orders;

    order_id Orders.OrderID%TYPE;
    order_amount Orders.Amount%TYPE;
BEGIN
    OPEN order_cursor;

    LOOP
        FETCH order_cursor INTO order_id, order_amount;

        EXIT WHEN NOT FOUND;

        IF order_amount > 10000 THEN
            RAISE NOTICE 'High Value';
        END IF;
    END LOOP;

    CLOSE order_cursor;
END $$;